INCLUDE "engine/link/cable_club_pokemon.asm"

; =========================================================
; OFFLINE WONDER TRADE (pokered)
; - Uses Trade Center UI only (no link/battle)
; - Pulls random species from CableClubPokemonTable (separate file)
; - DOES NOT touch OTID (OTIDs are inside mon structs in pokered)
; - Stamps OT NAME only (safe: wPartyMonOT is a fixed-length text table)
; =========================================================

; ---------------------------------------------------------
; Compatibility stubs / legacy symbols some forks expect
; ---------------------------------------------------------
EmptyFunc::
    ret

; Some codebases expect a Cable Club state machine entry.
; We enter our offline Wonder Trade flow and RETURN.
CableClub_Run::
    call WonderTrade_Enter
    ret

; Predef expects this symbol name in some bases (Diploma/etc).
Diploma_TextBoxBorder::
    call GetPredefRegisters
    ; fallthrough to CableClub_TextBoxBorder

; =========================================================
; Offline Wonder Trade entrypoint
; =========================================================
WonderTrade_Enter::
    ; Ensure we are NOT in link mode
    ld a, CONNECTION_NOT_ESTABLISHED
    ldh [hSerialConnectionStatus], a
    ld hl, wStatusFlags4
    res BIT_LINK_CONNECTED, [hl]

    ; Stop overworld sprite updates while we run UI
    xor a
    ld [wUpdateSpritesEnabled], a
    call HideSprites
    call DelayFrame

    ; Trade UI likes BG transfer on
    ld a, 1
    ldh [hAutoBGTransferEnabled], a
    call DelayFrame

    ; Build baseline UI tiles
    call ClearScreen
    call LoadFontTilePatterns
    call LoadHpBarAndStatusTilePatterns
    call LoadTrainerInfoTextBoxTiles

    ; State 0 = select mon
    xor a
    ld [wTradeCenterPointerTableIndex], a

.mainloop
    ld a, [wTradeCenterPointerTableIndex]
    cp $ff
    jr z, .done
    call CallCurrentTradeCenterFunction
    jr .mainloop

.done
    call ExitWonderTrade
    ret

; =========================================================
; Pointer table dispatcher
; =========================================================
CallCurrentTradeCenterFunction::
    ld hl, TradeCenterPointerTable
    ld b, 0
    ld a, [wTradeCenterPointerTableIndex]
    add a              ; a = a*2 (dw table)
    ld c, a
    add hl, bc
    ld a, [hli]
    ld h, [hl]
    ld l, a
    jp hl

; =========================================================
; State 0: Select a party mon
; =========================================================
TradeCenter_SelectMon::
    ; Keep BG transfers enabled
    ld a, 1
    ldh [hAutoBGTransferEnabled], a

    ; Draw UI
    call ClearScreen
    call LoadTrainerInfoTextBoxTiles
    call TradeCenter_DrawPlayerPartyList
    call TradeCenter_DrawCancelBox
    call DelayFrame

    ; Menu init
    xor a
    ld [wMenuWatchMovingOutOfBounds], a
    ld [wCurrentMenuItem], a
    ld [wLastMenuItem], a
    ld [wMenuJoypadPollCount], a

.select_loop
    ; Watch A to pick, DOWN to go to cancel row
    ld a, D_DOWN | A_BUTTON
    ld [wMenuWatchedKeys], a

    ld a, [wPartyCount]
    ld [wMaxMenuItem], a

    ld a, 1
    ld [wTopMenuItemY], a
    ld [wTopMenuItemX], a

    ; Clear cursor column only
    hlcoord 1, 1
    lb bc, 6, 1
    call ClearScreenArea

.input_loop
    ld hl, hUILayoutFlags
    set BIT_DOUBLE_SPACED_MENU, [hl]
    call HandleMenuInput
    ld hl, hUILayoutFlags
    res BIT_DOUBLE_SPACED_MENU, [hl]

    and a
    jr z, .input_loop

    bit BIT_A_BUTTON, a
    jr nz, .choose_mon

    bit BIT_D_DOWN, a
    jr nz, .cancel

    jr .input_loop

.choose_mon
    ; If cursor is on cancel row, clamp to last mon
    ld a, [wMaxMenuItem]
    ld c, a
    ld a, [wCurrentMenuItem]
    cp c
    jr c, .ok_index
    ld a, [wMaxMenuItem]
    dec a
.ok_index
    ld [wTradingWhichPlayerMon], a

    ; Next state: do trade
    ld a, 1
    ld [wTradeCenterPointerTableIndex], a
    ret

.cancel
    ld a, $ff
    ld [wTradeCenterPointerTableIndex], a
    ret

; =========================================================
; State 1: Execute Wonder Trade (offline)
; =========================================================
TradeCenter_Trade::
    ; Keep BG transfers enabled
    ld a, 1
    ldh [hAutoBGTransferEnabled], a

    ; Small UX delay
    ld c, 20
    call DelayFrames

    ; ---------------------------
    ; 1) Capture level BEFORE removing mon
    ; ---------------------------
    ld a, [wTradingWhichPlayerMon]
    ld hl, wPartyMon1Level
    ld bc, wPartyMon2 - wPartyMon1
    call AddNTimes
    ld a, [hl]
    and a
    jr nz, .lvl_ok
    ld a, 1
.lvl_ok
    ld b, a ; B = level to re-add at

    ; ---------------------------
    ; 2) Remove chosen player mon
    ; ---------------------------
    ld a, [wTradingWhichPlayerMon]
    ld [wWhichPokemon], a
    xor a
    ld [wRemoveMonFromBox], a
    call RemovePokemon

    ; ---------------------------
    ; 3) Pick random species from CableClubPokemonTable
    ;    (table is curated by you; no extra legend checks needed)
    ; ---------------------------
.pick_species
    call WonderTrade_PickRandomSpecies
    and a
    jr z, .pick_species
    cp NUM_POKEMON + 1
    jr nc, .pick_species
    ld [wCurPartySpecies], a

    ; ---------------------------
    ; 4) Add received mon at same level
    ; pokered AddPartyMon expects wCurEnemyLevel and wCurPartySpecies
    ; ---------------------------
    ld a, b
    ld [wCurEnemyLevel], a
    ld a, $80
    ld [wMonDataLocation], a
    call AddPartyMon

    ; Received mon is last in party
    ld a, [wPartyCount]
    dec a
    ld [wWhichPokemon], a

    ; Nickname -> species name
    call WonderTrade_SetReceivedNickname

    ; OT name -> "WONDER" (SAFE)
    call WonderTrade_StampReceivedMon

    ; ---------------------------
    ; 5) Completion message
    ; ---------------------------
    call ClearScreen
    call LoadTrainerInfoTextBoxTiles
    call DelayFrame

    hlcoord 0, 12
    ld b, 4
    ld c, 18
    call CableClub_TextBoxBorder
    hlcoord 1, 14
    ld de, TradeCompletedText
    call PlaceString
    call DelayFrame

    ld c, 60
    call DelayFrames

    ; Exit state machine
    ld a, $ff
    ld [wTradeCenterPointerTableIndex], a
    ret

; =========================================================
; Exit / Return helpers
; =========================================================
ExitWonderTrade::
    ; Re-enable sprite updates
    ld a, 1
    ld [wUpdateSpritesEnabled], a
    call ClearSprites
    call DelayFrame

    ; Stop menus intercepting input
    xor a
    ld [wMenuJoypadPollCount], a
    ld [wMenuWatchedKeys], a
    ld [wMenuWatchMovingOutOfBounds], a

    ; Ensure link flags cleared
    ld hl, wStatusFlags4
    res BIT_LINK_CONNECTED, [hl]
    ld a, CONNECTION_NOT_ESTABLISHED
    ldh [hSerialConnectionStatus], a

    call ReturnToCableClubRoom
    ret

ReturnToCableClubRoom::
    call GBPalWhiteOutWithDelay3
    ld hl, wFontLoaded
    ld a, [hl]
    push af
    push hl
    res BIT_FONT_LOADED, [hl]
    xor a
    ld [wStatusFlags3], a
    dec a
    ld [wDestinationWarpID], a
    call LoadMapData
    farcall ClearVariablesOnEnterMap
    pop hl
    pop af
    ld [hl], a
    call GBFadeInFromWhite
    ret

; =========================================================
; UI helpers
; =========================================================
TradeCenter_DrawCancelBox::
    hlcoord 11, 15
    ld a, $7e
    ld bc, 2 * SCREEN_WIDTH + 9
    call FillMemory
    hlcoord 0, 15
    ld b, 1
    ld c, 9
    call CableClub_TextBoxBorder
    hlcoord 2, 16
    ld de, CancelTextString
    jp PlaceString

CancelTextString:
    db "CANCEL@"

TradeCenter_DrawPlayerPartyList::
    hlcoord 0, 0
    ld b, 6
    ld c, 18
    call CableClub_TextBoxBorder

    hlcoord 5, 0
    ld de, wPlayerName
    call PlaceString

    hlcoord 2, 1
    ld de, wPartySpecies
    call TradeCenter_PrintPartyListNames
    ret

TradeCenter_PrintPartyListNames::
    ld c, 0
.loop
    ld a, [de]
    cp $ff
    ret z
    ld [wNamedObjectIndex], a
    push bc
    push hl
    push de

    ; Get mon name into wNameBuffer (and/or DE depending on base)
    call GetMonName

    pop de
    pop hl
    call PlaceString
    inc de
    ld bc, 20
    add hl, bc
    pop bc
    inc c
    jr .loop

; =========================================================
; Pointer table
; =========================================================
TradeCenterPointerTable:
    dw TradeCenter_SelectMon
    dw TradeCenter_Trade

; =========================================================
; Text
; =========================================================
TradeCompletedText:
    db "Trade completed!@"

; =========================================================
; Textbox border (shared)
; =========================================================
CableClub_TextBoxBorder::
    push hl
    ld a, $78
    ld [hli], a
    inc a
    call CableClub_DrawHorizontalLine
    inc a
    ld [hl], a
    pop hl
    ld de, 20
    add hl, de
.loop
    push hl
    ld a, $7b
    ld [hli], a
    ld a, " "
    call CableClub_DrawHorizontalLine
    ld [hl], $77
    pop hl
    ld de, 20
    add hl, de
    dec b
    jr nz, .loop
    ld a, $7c
    ld [hli], a
    ld a, $76
    call CableClub_DrawHorizontalLine
    ld [hl], $7d
    ret

CableClub_DrawHorizontalLine::
    ld d, c
.loop
    ld [hli], a
    dec d
    jr nz, .loop
    ret

LoadTrainerInfoTextBoxTiles::
    ld de, TrainerInfoTextBoxTileGraphics
    ld hl, vChars2 tile $76
    lb bc, BANK(TrainerInfoTextBoxTileGraphics), (TrainerInfoTextBoxTileGraphicsEnd - TrainerInfoTextBoxTileGraphics) / $10
    jp CopyVideoData

; =========================================================
; Wonder Trade helpers/data
; =========================================================

WonderTrade_OTString:
    db "WONDER@@@@@"

; Picks 1 byte from CableClubPokemonTable (defined in cable_club_pokemon.asm)
WonderTrade_PickRandomSpecies::
    call Random
    ld a, [hRandomAdd]
    ld b, CableClubPokemonTableEnd - CableClubPokemonTable
.mod
    cp b
    jr c, .ok
    sub b
    jr .mod
.ok
    ld e, a
    ld d, 0
    ld hl, CableClubPokemonTable
    add hl, de
    ld a, [hl]
    ret

; DE = pointer to last party OT name entry (NAME_LENGTH)
WonderTrade_GetLastPartyOTPtr::
    ld a, [wPartyCount]
    dec a
    ld hl, wPartyMonOT
    call SkipFixedLengthTextEntries
    ld d, h
    ld e, l
    ret

WonderTrade_StampReceivedMon::
    ; OT name = "WONDER"
    call WonderTrade_GetLastPartyOTPtr
    ld hl, WonderTrade_OTString
    ld bc, NAME_LENGTH
    call CopyData
    ret

WonderTrade_SetReceivedNickname::
    ; Get species name into wNameBuffer
    ld a, [wCurPartySpecies]
    ld [wNamedObjectIndex], a
    call GetMonName

    ; HL = pointer to last party nickname entry
    ld a, [wPartyCount]
    dec a
    ld hl, wPartyMonNicks
    call SkipFixedLengthTextEntries

    ; Copy wNameBuffer into nickname slot
    ld d, h
    ld e, l              ; DE = nickname slot
    ld hl, wNameBuffer   ; HL = source
    ld bc, NAME_LENGTH
    call CopyData
    ret

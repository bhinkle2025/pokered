; =========================================================
; Cable Club NPC → Offline Wonder Trade starter
; =========================================================

CableClubNPC::
    ld hl, CableClubNPC_WonderTradeIntroText
    call PrintText
    call CableClubNPC_PauseText

    call YesNoChoice
    ld a, [wCurrentMenuItem]
    and a
    jr nz, .noThanks

    ld hl, CableClubNPC_WonderTradeSaveText
    call PrintText
    call CableClubNPC_PauseText

    call YesNoChoice
    ld a, [wCurrentMenuItem]
    and a
    jr nz, .noThanks

    callfar SaveSAVtoSRAM
    ld a, SFX_SAVE
    call PlaySoundWaitForCurrent

    ld hl, CableClubNPC_WonderTradeStartingText
    call PrintText
    call CableClubNPC_PauseText

    ; IMPORTANT: close text UI before opening your own full-screen UI
    call CloseTextDisplay

    call WonderTrade_Enter
    ret

.noThanks
    ld hl, CableClubNPC_WonderTradeComeAgainText
    call PrintText
    call CableClubNPC_PauseText
    ret

; ---------------------------------------------------------
; Main menu / link cleanup expects this symbol to exist.
; Keep it.
; ---------------------------------------------------------
CloseLinkConnection::
    call Delay3
    ld a, CONNECTION_NOT_ESTABLISHED
    ldh [hSerialConnectionStatus], a
    xor a
    ldh [hSerialReceiveData], a
    ret

; ---------------------------------------------------------
; Text pointers (these symbols must exist)
; ---------------------------------------------------------
CableClubNPC_WonderTradeIntroText:
    text_far _CableClubNPC_WonderTradeIntroText
    text_end

CableClubNPC_WonderTradeSaveText:
    text_far _CableClubNPC_WonderTradeSaveText
    text_end

CableClubNPC_WonderTradeStartingText:
    text_far _CableClubNPC_WonderTradeStartingText
    text_end

CableClubNPC_WonderTradeComeAgainText:
    text_far _CableClubNPC_WonderTradeComeAgainText
    text_end

; ---------------------------------------------------------
; Wait for player input so text doesn't instantly advance
; ---------------------------------------------------------
CableClubNPC_PauseText::
    call WaitForTextScrollButtonPress
    ret




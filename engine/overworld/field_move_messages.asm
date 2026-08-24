PrintStrengthText::
	ld hl, wStatusFlags1
	set BIT_STRENGTH_ACTIVE, [hl]
	ld hl, UsedStrengthText
	call PrintText
	ld hl, CanMoveBouldersText
	jp PrintText

UsedStrengthText:
	text_far _UsedStrengthText
	text_asm
	ld a, [wCurPartySpecies]
	call PlayCry
	call Delay3
	jp TextScriptEnd

CanMoveBouldersText:
	text_far _CanMoveBouldersText
	text_end

; checks all PartyMon movesets for move stored in 'a'
; sets carry flag if move is not found
CheckPartyForMove::
	push de							; preserves value in 'de' to avoid game crash later
	ld a, [wSearchedMove]			; copy MoveID from wSearchedMove into 'a'
	ld d, a							; d = move that is being searched for
	ld e, 1							; e = constant representing Mon teamslot that is being checked
	ld hl, wPartyMon1Moves			; hl = PartyMon1's first move
	push hl							; saves value in 'hl' to the stack
.getNumMoves
	ld c, NUM_MOVES
.checkCurrentMonMoves
	ld a, [hli]						; loads current move into 'a', increments 'hl' to next move
	cp d							; check move ID against move that is being searched for
	jr z, .checkIfStrength			; if the move IDs match, jump to the next step of the process
	dec c							; reduce number of moves to check
	jr nz, .checkCurrentMonMoves	; if c != 0, loop back
.prepNextMonMoves					; if current Mon doesn't have desired move, load data for next Mon
	inc e							; e = next teamslot
	ld a, [wPartyCount]				; how many Mons are in the party?
	cp e							; compare 'e' to total number of PartyMons
	jr c, .done						; if e > a, exit routine (all PartyMons were checked without success)
	pop hl							; retrieves current Mon's moveset data from the stack
	ld bc, wPartyMon2 - wPartyMon1	; bc = gap between corresponding elements of PartyMon data
	add hl, bc						; moves 'hl' from current Mon's moveset to next Mon's moveset
	push hl							; saves new moveset data to the stack
	jr .getNumMoves					; loop back to check moves in the new moveset
.checkIfStrength					; check if we can skip Mon cry data, since only Strength requires it
	ld a, d							; a = move being searched for
	cp STRENGTH						; compare move ID in 'a' to STRENGTH
	jr nz, .getMonName				; if no match, skip getting Mon's cry data.
	ld hl, wPartySpecies			; hl = PartyMon1 species data
	ld a, e							; a = whichever teamslot had to be reached before finding Strength
	dec a							; accounts for not having to go anywhere for Mon1's data
	jr z, .loadMonCry				; if a = 0, we're dealing with Mon1, we have what we need
.getMonCry
	inc hl							; move to next PartyMon's species data
	dec a							; reduce teamslot counter
	jr nz, .getMonCry				; loop back until a = 0
.loadMonCry
	ld a, [hl]						; load MonID into 'a'
	ld [wCurPartySpecies], a		; load MonID to be used as Mon's cry
.getMonName							; begin process of getting Mon's name to display in move text
	ld hl, wPartyMon1Nick			; hl = Mon1's nickname
	ld a, e							; 'a' once again equals whichever teamslot was reached
	dec a							; again accounts for starting at Mon1's data
	jr z, .loadMonName				; look familiar? If a = 0, jump because we're dealing with Mon1
	ld bc, wPartyMon2Nick - wPartyMon1Nick ; bc = gap between PartyMon nickname data
	call AddNTimes					; moves 'hl' the proper distance to point to appropriate Mon's nickname
.loadMonName						; loads Mon's nickname to be displayed during text
	ld de, wNameBuffer
	ld bc, 11
	call CopyData
	and a							; resets carry flag before exiting routine
; if jumping here because no Mon had the move, carry flag will have been set as a result of cp instruction
.done
	pop de							; retrieves value originally in 'de' to avoid game crash
	ret								; finally, we jump all the way back to where we originally came from

CheckPartyCanLearnMove:
	ld e, 0

.loop
	ld a, e
	ld [wWhichPokemon], a

	ld hl, wPartySpecies
	ld c, e
	ld b, 0
	add hl, bc
	ld a, [hl]

	cp $ff
	jr z, .notFound

	ld [wCurPartySpecies], a

	ld a, d
	ld [wMoveNum], a

	push de
	predef CanLearnTM
	pop de

	ld a, c
	and a
	jr nz, .found

	inc e
	jr .loop

.found
	ld a, e
	ld [wWhichPokemon], a
	and a
	ret

.notFound
	scf
	ret

IsSurfingAllowed::
; Returns whether surfing is allowed in BIT_SURF_ALLOWED of wStatusFlags1.
; Surfing isn't allowed on the Cycling Road or in the lowest level of the
; Seafoam Islands before the current has been slowed with boulders.
	ld hl, wStatusFlags1
	set BIT_SURF_ALLOWED, [hl]
	ld a, [wStatusFlags6]
	bit BIT_ALWAYS_ON_BIKE, a
	jr nz, .forcedToRideBike
	ld a, [wCurMap]
	cp SEAFOAM_ISLANDS_B4F
	ret nz
	CheckBothEventsSet EVENT_SEAFOAM4_BOULDER1_DOWN_HOLE, EVENT_SEAFOAM4_BOULDER2_DOWN_HOLE
	ret z
	ld hl, SeafoamIslandsB4FStairsCoords
	call ArePlayerCoordsInArray
	ret nc
	ld hl, wStatusFlags1
	res BIT_SURF_ALLOWED, [hl]
	ld hl, CurrentTooFastText
	jp PrintText
.forcedToRideBike
	ld hl, wStatusFlags1
	res BIT_SURF_ALLOWED, [hl]
	ld hl, CyclingIsFunText
	jp PrintText

SeafoamIslandsB4FStairsCoords:
	dbmapcoord  7, 11
	db -1 ; end

CurrentTooFastText:
	text_far _CurrentTooFastText
	text_end

CyclingIsFunText:
	text_far _CyclingIsFunText
	text_end

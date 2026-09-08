ParalyzeEffect_:
	ld hl, wEnemyMonStatus
	ld de, wPlayerMoveType
	ldh a, [hWhoseTurn]
	and a
	jp z, .next
	ld hl, wBattleMonStatus
	ld de, wEnemyMoveType
.next
	ld a, [hl]
	and a ; does the target already have a status ailment?
	jr nz, .didntAffect
; -----------------------------
; Stun Spore: Grass immunity
; -----------------------------
	ldh a, [hWhoseTurn]
	and a
	jr z, .playerMove
	ld a, [wEnemyMoveNum]
	jr .checkMove
.playerMove
	ld a, [wPlayerMoveNum]

.checkMove
	cp STUN_SPORE
	jr nz, .checkTypeImmunity

	; check target types
	ld b, h
	ld c, l
	inc bc          ; type1
	ld a, [bc]
	cp GRASS
	jr z, .doesntAffect
	inc bc          ; type2
	ld a, [bc]
	cp GRASS
	jr z, .doesntAffect
.checkTypeImmunity
	; Check target's first type
	ld b, h
	ld c, l
	inc bc
	ld a, [bc]
	cp ELECTRIC
	jr z, .doesntAffect
	; Check target's second type
	inc bc
	ld a, [bc]
	cp ELECTRIC
	jr z, .doesntAffect
	; Ground immunity only applies to Electric-type paralysis moves
	ld a, [de]
	cp ELECTRIC
	jr nz, .hitTest
	ld b, h
	ld c, l
	inc bc
	ld a, [bc]
	cp GROUND
	jr z, .doesntAffect
	inc bc
	ld a, [bc]
	cp GROUND
	jr z, .doesntAffect
.hitTest
	push hl
	callfar MoveHitTest
	pop hl
	ld a, [wMoveMissed]
	and a
	jr nz, .didntAffect
	set PAR, [hl]
	callfar QuarterSpeedDueToParalysis
	ld c, 30
	call DelayFrames
	callfar PlayCurrentMoveAnimation
	jpfar PrintMayNotAttackText
.didntAffect
	ld c, 50
	call DelayFrames
	jpfar PrintDidntAffectText
.doesntAffect
	ld c, 50
	call DelayFrames
	jpfar PrintDoesntAffectText

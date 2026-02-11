CeladonMart5F_Script:
	jp EnableAutoTextBoxDrawing

CeladonMart5F_TextPointers:
	def_text_pointers
	dw_const CeladonMart5FGentlemanText,        TEXT_CELADONMART5F_GENTLEMAN
	dw_const CeladonMart5FSailorText,           TEXT_CELADONMART5F_SAILOR
	dw_const CeladonMart5FClerk1Text,           TEXT_CELADONMART5F_CLERK1
	dw_const CeladonMart5FClerk2Text,           TEXT_CELADONMART5F_CLERK2
	dw_const CeladonMart5FCurrentFloorSignText, TEXT_CELADONMART5F_CURRENT_FLOOR_SIGN

CeladonMart5FClerk2Text:
	text_asm
	ld hl, CeladonMartMrHyperIntroText	; Displays Mr. Hyper's generic IntroText
	call PrintText
	ld b, BOTTLE_CAP
	call IsItemInBag							; Checks if there is a Bottle Cap in your bag
	jp z, .StopByAnytime						; If not, the player is turned away. If so, begin preparing for following LeadMonText:
	ld a, [wWhichPokemon]						; Loads a party Mon name (in this case, the last party slot) into register 'a'
	ld bc, wPartyMon2 - wPartyMon1				; Moves up through the party list
	call AddNTimes								; Keeps us moving until the top (lead Mon) slot is reached
	ld hl, wPartyMonNicks						; Loads in the Mon nickname
	call GetPartyMonName						; Sets the name to be referenced by wNameBuffer in text\CeladonMansionRoof.asm
	ld hl, CeladonMartMrHyperLeadMonText	; Now Mr. Hyper will mention your lead Mon here in his LeadMon text
	call PrintText
.CheckForPerfectDVs:								; This section of code will check to see if your lead Mon already has perfect DVs:
	ld hl, wPartyMon1DVs							; Loads in lead Mon's full set of current DVs into register 'hl'
	ld a, [hli]										; Loads Attack and Defense DVs into register 'a'
	cp MAX_DVS										; Checks if Attack and Defense are already at max value (FF) 
	jr nz, .CeladonMartMrHyperOfferTraining	; If not, jump to where Mr. Hyper offers Hyper Training
	ld a, [hl]										; If they are max value, load Speed and Special DVs into register 'a'
	cp MAX_DVS										; Now checks if Speed and Special are already at max value
	jp z, .NothingToDo								; If already max, the training is NOT offered. If not max, move on to OfferTrainingText
.CeladonMartMrHyperOfferTraining:
	ld hl, CeladonMartMrHyperOfferTrainingText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jp nz, .RefusedTraining
	ld hl, HandOverBottleCapText
	call PrintText
	ld a, BOTTLE_CAP			; Loads BOTTLE_CAP into register 'a'
	ldh [hItemToRemoveID], a	; Prepares for item removal
	farcall RemoveItemByID		; One Bottle Cap is removed from player inventory
	ld hl, PlayerHandedOverBottleCapText
	call PrintText
	ld hl, NowWeBeginText
	call PrintText
	ld hl, wPartyMon1DVs	; Load lead Mon DVs into register 'hl'
	ld a, $FF				; Load FF (for two perfect 15 DVs) into register 'a'
	ld [hli], a				; Overwrite lead Mon's current Attack and Defense DVs with the FF in register 'a'
	ld [hl], a				; Overwrite lead Mon's current Speed and Special DVs with the FF in register 'a'
	call GBFadeOutToBlack
	ld c, 30						; Loads a selected number into register 'c'
	call DelayFrames				; Delays next effect by number of frames specified in register 'c' (60 frames = 1 second)
	ld a, SFX_HEAL_HP				; Sound effect to be played (see \constants\music_constants.asm for full list of options)
	call PlaySound					; plays sound effect or music specified in register 'a'
	call WaitForSoundToFinish
	ld c, 60
	call DelayFrames
	ld a, SFX_GET_ITEM_2
	call PlaySound
	call WaitForSoundToFinish
	ld c, 30
	call DelayFrames
	call GBFadeInFromBlack
	ld hl, TrainingCompleteText	; Finally, display the end text
	jr .done					; You're now free to leave and use your newly buffed Mon in battle
.StopByAnytime
	ld hl, .StopByAnytimeText
	jr .done
.NothingToDo
	ld hl, .NothingToDoText
	jr .done
.RefusedTraining
	ld hl, .RefusedTrainingText
	jr .done
.done
	call PrintText
	jp TextScriptEnd

.StopByAnytimeText
	text_far _StopByAnytimeText
	text_end

.NothingToDoText
	text_far _NothingToDoText
	text_end

.RefusedTrainingText
	text_far _RefusedTrainingText
	text_end

CeladonMartMrHyperIntroText:
	text_far _CeladonMartMrHyperIntroText
	text_end

CeladonMartMrHyperLeadMonText:
	text_far _CeladonMartMrHyperLeadMonText
	text_end

CeladonMartMrHyperOfferTrainingText:
	text_far _CeladonMartMrHyperOfferTrainingText
	text_end

HandOverBottleCapText:
	text_far _HandOverBottleCapText
	text_end

PlayerHandedOverBottleCapText:
	text_far _PlayerHandedOverBottleCapText
	sound_get_key_item
	text_end

NowWeBeginText:
	text_far _NowWeBeginText
	text_end

TrainingCompleteText:
	text_far _TrainingCompleteText
	text_end


CeladonMart5FGentlemanText:
	text_far _CeladonMart5FGentlemanText
	text_end

CeladonMart5FSailorText:
	text_far _CeladonMart5FSailorText
	text_end

CeladonMart5FCurrentFloorSignText:
	text_far _CeladonMart5FCurrentFloorSignText
	text_end

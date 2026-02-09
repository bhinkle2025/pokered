CeladonMart2F_Script:
	jp EnableAutoTextBoxDrawing

CeladonMart2F_TextPointers:
	def_text_pointers
	dw_const CeladonMart2FClerk1Text,           TEXT_CELADONMART2F_CLERK1
	dw_const CeladonMart2FClerk2Text,           TEXT_CELADONMART2F_CLERK2
	dw_const CeladonMart2FMiddleAgedManText,    TEXT_CELADONMART2F_MIDDLE_AGED_MAN
	dw_const CeladonMart2FGirlText,             TEXT_CELADONMART2F_GIRL
	dw_const CeladonMart2FCurrentFloorSignText, TEXT_CELADONMART2F_CURRENT_FLOOR_SIGN

CeladonMart2FClerk2Text:
	text_asm
	CheckEvent EVENT_GOT_SURFBOARD
	jr nz, .got_item

	ld hl, .PreReceiveText
	call PrintText
	call WaitForTextScrollButtonPress ; <-- forces the pause

	lb bc, SURFBOARD, 1
	call GiveItem
	jr nc, .bag_full

	SetEvent EVENT_GOT_SURFBOARD
	ld hl, .ReceivedText
	jr .done

.bag_full
	ld hl, .NoRoomText
	jr .done

.got_item
	ld hl, .AlreadyGotText

.done
	call PrintText
	jp TextScriptEnd

.PreReceiveText
	text_far _CeladonMart2FClerk2GiveSurfboardText
	text_end

.ReceivedText
	text_far _CeladonMart2FClerk2ReceivedSurfboardText
	sound_get_item_1
	text_end

.AlreadyGotText
	text_far _CeladonMart2FClerk2AlreadyGotSurfboardText
	text_end

.NoRoomText
	text_far _CeladonMart2FClerk2BagFullText
	text_end

CeladonMart2FMiddleAgedManText:
	text_far _CeladonMart2FMiddleAgedManText
	text_end

CeladonMart2FGirlText:
	text_far _CeladonMart2FGirlText
	text_end

CeladonMart2FCurrentFloorSignText:
	text_far _CeladonMart2FCurrentFloorSignText
	text_end

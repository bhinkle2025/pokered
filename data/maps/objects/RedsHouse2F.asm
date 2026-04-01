RedsHouse2F_Object:
	db $a ; border block

	def_warp_events
	warp_event  7,  1, REDS_HOUSE_1F, 3

	def_bg_events
	bg_event  0,  7, TEXT_REDSHOUSE2F_BED_STASH

	def_object_events

	def_warps_to REDS_HOUSE_2F

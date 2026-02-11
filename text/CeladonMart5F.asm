_CeladonMartMrHyperIntroText::
	text "Everyone calls me"
	line "MR. HYPER."
	
	para "I know how to"
	line "HYPER TRAIN your"
	cont "#MON to bring"
	cont "out its full"
	cont "potential."

	para "I also love to"
	line "collect BOTTLE"
	cont "CAPS..."
	prompt
	
_StopByAnytimeText::
	text "Stop by anytime"
	line "with a BOTTLE"
	cont "CAP and I'll be"
	cont "happy to make"
	cont "your lead #MON"
	cont "stronger."
	done

_CeladonMartMrHyperLeadMonText::
	text "Now let's have a"
	line "look at your"
	cont "@"
	text_ram wNameBuffer
	text "..."
	prompt

_NothingToDoText::
	text "There's nothing"
	line "more I can do."
	
	para "This is what peak"
	line "performance looks"
	cont "like!"
	done

_CeladonMartMrHyperOfferTrainingText::
	text "It looks like it"
	line "could benefit"
	cont "from some of my"
	cont "specialized help."
	
	para "In exchange for a"
	line "BOTTLE CAP, would"
	cont "you like me to"
	cont "power up your"
	cont "@"
	text_ram wNameBuffer
	text "?"
	done

_RefusedTrainingText::
	text "Why? I promise"
	line "it's totally safe!" 
	done

_HandOverBottleCapText::
	text "Excellent!"
	
	para "Now, if you'd"
	line "kindly hand over"
	cont "a BOTTLE CAP..."
	prompt

_PlayerHandedOverBottleCapText::
	text "<PLAYER> handed"
	line "over a"
	cont "BOTTLE CAP!@"
	text_end

_NowWeBeginText::
	text "Now we begin! It"
	line "won't take long."
	prompt

_TrainingCompleteText::
	text "The training is"
	line "complete."
	
	para "Now, you may not"
	line "notice any"
	cont "immediate changes"
	cont "in your #MON,"
	cont "but don't worry."
	
	para "With a little"
	line "further training"
	cont "its gains will"
	cont "become obvious!"
	
	para "Thanks for"
	line "stopping by."
	done


_CeladonMart5FGentlemanText::
	text "#MON ability"
	line "enhancers can be"
	cont "bought only here."

	para "Use CALCIUM to"
	line "increase SPECIAL"
	cont "abilities."

	para "Use CARBOS to"
	line "increase SPEED."
	done

_CeladonMart5FSailorText::
	text "I'm here for"
	line "#MON ability"
	cont "enhancers."

	para "PROTEIN increases"
	line "ATTACK power."

	para "IRON increases"
	line "DEFENSE!"
	done

_CeladonMart5FCurrentFloorSignText::
	text "5F: DRUG STORE"
	done

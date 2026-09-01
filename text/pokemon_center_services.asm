_PokemonCenterServicesGreetingText::
	text "How can I help"
	line "you today?"
	prompt

_MoveDeleterGreetingText::
	text "I can make a"
	line "#MON forget"
	cont "a move."
	prompt

_MoveDeleterSaidYesText::
	text "Which #MON?"
	prompt

_MoveDeleterOneMoveText::
	text "That #MON only"
	line "knows one move."
	prompt

_MoveDeleterWhichMoveText::
	text "Which move should"
	line "it forget?"
	prompt

_MoveDeleterConfirmText::
	text "Forget"
	line "@"
	text_ram wStringBuffer
	text "?"
	done

_MoveDeleterForgotText::
	text "The move was"
	line "forgotten!"
	prompt

_MoveDeleterByeText::
	text "Come back anytime."
	prompt

_MoveReminderComingSoonText::
	text "Move remembering"
	line "isn't ready yet."
	prompt

_WonderTradeComingSoonText::
	text "Wonder Trade isn't"
	line "ready yet."
	prompt

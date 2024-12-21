Route2WildMons:
	def_grass_wildmons 25 ; encounter rate
	db  3, RATTATA
	db  3, PIDGEY
	db  4, PIDGEY
	db  4, RATTATA
	db  5, PIDGEY
IF DEF(_RED)
	db  3, WEEDLE
	db  2, CATERPIE
	db  5, ODDISH
	db  4, BELLSPROUT
	db  5, MR_MIME
ENDC
IF DEF(_BLUE)
	db  3, CATERPIE
	db  2, WEEDLE
	db  5, ODDISH
	db  4, BELLSPROUT
	db  5, MR_MIME
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

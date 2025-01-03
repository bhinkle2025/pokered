Route6WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 13, ODDISH
	db 13, PIDGEOTTO
	db 15, BELLSPROUT
	db 10, MANKEY
	db 12, JIGGLYPUFF
	db 15, GROWLITHE
	db 16, VULPIX
	db 16, MEOWTH
	db 14, ABRA
	db 16, PSYDUCK
ENDC
IF DEF(_BLUE)
	db 13, ODDISH
	db 13, PIDGEOTTO
	db 15, BELLSPROUT
	db 10, MANKEY
	db 12, JIGGLYPUFF
	db 15, GROWLITHE
	db 16, VULPIX
	db 16, MEOWTH
	db 14, ABRA
	db 16, PSYDUCK
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

Route5WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 13, ODDISH
	db 13, PIDGEOTTO
	db 15, RATTATA
	db 10, MANKEY
	db 14, VULPIX
	db 14, GROWLITHE
	db 16, BELLSPROUT
	db 16, JIGGLYPUFF
	db 14, ABRA
	db 14, CHANSEY
ENDC
IF DEF(_BLUE)
	db 13, ODDISH
	db 13, PIDGEOTTO
	db 15, RATTATA
	db 10, MANKEY
	db 14, VULPIX
	db 14, GROWLITHE
	db 16, BELLSPROUT
	db 16, JIGGLYPUFF
	db 14, ABRA
	db 14, CHANSEY
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

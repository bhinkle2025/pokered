Route14WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 24, RATICATE
	db 26, FEAROW
	db 23, DITTO
	db 24, VENONAT
	db 30, WEEPINBELL
	db 31, VENOMOTH
	db 26, TAUROS
	db 30, GLOOM
ENDC
IF DEF(_BLUE)
	db 24, RATICATE
	db 26, FEAROW
	db 23, DITTO
	db 24, VENONAT
	db 30, WEEPINBELL
	db 31, VENOMOTH
	db 26, TAUROS
	db 30, GLOOM
ENDC
	db 30, SCYTHER
	db 30, PINSIR
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

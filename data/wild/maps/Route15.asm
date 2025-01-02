Route15WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 24, RATICATE
	db 26, DITTO
	db 23, PIDGEOT
	db 26, VENONAT
	db 22, TAUROS
	db 28, VENOMOTH
	db 30, WEEPINBELL
	db 30, GLOOM
ENDC
IF DEF(_BLUE)
	db 24, RATICATE
	db 26, DITTO
	db 23, PIDGEOT
	db 26, VENONAT
	db 22, TAUROS
	db 28, VENOMOTH
	db 30, WEEPINBELL
	db 30, GLOOM
ENDC
	db 30, PINSIR
	db 30, SCYTHER
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

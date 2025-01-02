Route12WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 24, ODDISH
	db 25, PIDGEOT
	db 23, FARFETCHD
	db 24, KRABBY
	db 22, BELLSPROUT
	db 26, VENONAT
	db 28, KINGLER
	db 27, FEAROW
	db 28, GLOOM
	db 30, WEEPINBELL
ENDC
IF DEF(_BLUE)
	db 24, BELLSPROUT
	db 25, PIDGEOT
	db 23, FARFETCHD
	db 24, KRABBY
	db 22, ODDISH
	db 26, VENONAT
	db 26, FEAROW
	db 28, KINGLER
	db 28, WEEPINBELL
	db 30, GLOOM
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

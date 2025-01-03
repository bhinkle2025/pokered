SafariZoneNorthWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db 22, PSYDUCK
	db 26, PONYTA
	db 23, MANKEY
	db 25, WEEPINBELL
	db 34, GOLDUCK
	db 38, RAPIDASH
	db 34, PRIMEAPE
ENDC
IF DEF(_BLUE)
	db 22, PSYDUCK
	db 26, PONYTA
	db 23, MANKEY
	db 25, WEEPINBELL
	db 34, GOLDUCK
	db 38, RAPIDASH
	db 34, PRIMEAPE
ENDC
	db 32, WARTORTLE
	db 26, VICTREEBEL
	db 28, BLASTOISE
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

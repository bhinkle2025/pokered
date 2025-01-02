PowerPlantWildMons:
	def_grass_wildmons 10 ; encounter rate
	db 21, VOLTORB
	db 21, MAGNEMITE
	db 20, PIKACHU
	db 34, GRIMER
	db 36, MUK
	db 30, ELECTRODE
	db 32, MAGNETON
	db 35, JOLTEON
IF DEF(_RED)
	db 33, RAICHU
	db 36, ELECTABUZZ
ENDC
IF DEF(_BLUE)
	db 33, RAICHU
	db 36, ELECTABUZZ
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

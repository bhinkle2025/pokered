Route4WildMons:
	def_grass_wildmons 20 ; encounter rate
	db 10, RATTATA
	db 10, SPEAROW
	db  8, RATTATA
IF DEF(_RED)
	db  6, EKANS
	db  8, JIGGLYPUFF
	db 10, SANDSHREW
	db 12, MANKEY
	db 12, WIGGLYTUFF
	db  8, PSYDUCK
	db 12, CHARMANDER
ENDC
IF DEF(_BLUE)
	db  6, SANDSHREW
	db  8, SPEAROW
	db 10, EKANS
	db 12, MANKEY
	db 12, JIGGLYPUFF
	db  8, PSYDUCK
	db 12, CHARMANDER
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

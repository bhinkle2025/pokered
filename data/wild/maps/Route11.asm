Route11WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 14, EKANS
	db 15, SPEAROW
	db 20, ARBOK
	db  15, DROWZEE
	db 13, SANDSHREW
	db 26, HYPNO
	db 15, RATICATE
ENDC
IF DEF(_BLUE)
	db 14, SANDSHREW
	db 15, SPEAROW
	db 20, SANDSLASH
	db  9, DROWZEE
	db 20, FEAROW
	db 26, HYPNO
	db 15, RATICATE
ENDC
	db 20, FEAROW
	db 20, SANDSLASH
	db 15, MR_MIME
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

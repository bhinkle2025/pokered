Route9WildMons:
	def_grass_wildmons 15 ; encounter rate
	db 16, RATTATA
	db 16, SPEAROW
	db 20, RATICATE
IF DEF(_RED)
	db 11, EKANS
	db 20, FEAROW
	db 20, ARBOK
	db 17, SANDSHREW
	db 20, SANDSLASH
	db 18, NIDORINA
	db 18, NIDORINO
ENDC
IF DEF(_BLUE)
	db 11, EKANS
	db 20, FEAROW
	db 20, ARBOK
	db 17, SANDSHREW
	db 20, SANDSLASH
	db 18, NIDORINA
	db 18, NIDORINO
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

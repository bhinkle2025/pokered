Route10WildMons:
	def_grass_wildmons 15 ; encounter rate
	db 16, VOLTORB
	db 16, SPEAROW
	db 14, MAGNEMITE
IF DEF(_RED)
	db 11, EKANS
	db 20, FEAROW
	db 15, SANDSHREW
	db 17, MACHOP
	db 22, SANDSLASH
	db 20, ARBOK
	db 17, KRABBY
ENDC
IF DEF(_BLUE)
	db 11, EKANS
	db 20, FEAROW
	db 15, SANDSHREW
	db 17, MACHOP
	db 22, SANDSLASH
	db 20, ARBOK
	db 17, KRABBY
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

SafariZoneWestWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db 25, CUBONE
	db 26, DODUO
	db 23, POLIWHIRL
	db 31, DODRIO
	db 33, MAROWAK
	db 28, PERSIAN
	db 25, IVYSAUR
ENDC
IF DEF(_BLUE)
	db 25, CUBONE
	db 26, DODUO
	db 23, POLIWHIRL
	db 31, DODRIO
	db 33, MAROWAK
	db 28, PERSIAN
	db 25, IVYSAUR
ENDC
	db 31, SCYTHER
	db 32, VENUSAUR
	db 28, POLIWRATH
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

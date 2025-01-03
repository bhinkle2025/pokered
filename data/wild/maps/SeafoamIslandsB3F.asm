SeafoamIslandsB3FWildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db 26, SLOWPOKE
	db 29, SHELLDER
	db 39, SLOWBRO
	db 23, PSYDUCK
	db 19, ZUBAT
	db 33, GOLBAT
	db 38, GOLDUCK
	db 38, CLOYSTER
	db 42, JYNX
ENDC
IF DEF(_BLUE)
	db 26, SLOWPOKE
	db 29, SHELLDER
	db 39, SLOWBRO
	db 23, PSYDUCK
	db 19, ZUBAT
	db 33, GOLBAT
	db 38, GOLDUCK
	db 38, CLOYSTER
	db 42, JYNX
ENDC
	db 37, DEWGONG
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

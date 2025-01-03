SeafoamIslands1FWildMons:
	def_grass_wildmons 15 ; encounter rate
	db 34, DEWGONG
IF DEF(_RED)
	db 30, SLOWPOKE
	db 30, SHELLDER
	db 38, SLOWBRO
	db 28, PSYDUCK
	db 21, ZUBAT
	db 29, GOLBAT
	db 33, GOLDUCK
	db 34, CLOYSTER
	db 38, JYNX
ENDC
IF DEF(_BLUE)
	db 30, SLOWPOKE
	db 30, SHELLDER
	db 38, SLOWBRO
	db 28, PSYDUCK
	db 21, ZUBAT
	db 29, GOLBAT
	db 33, GOLDUCK
	db 34, CLOYSTER
	db 38, JYNX
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

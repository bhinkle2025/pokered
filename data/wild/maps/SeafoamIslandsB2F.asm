SeafoamIslandsB2FWildMons:
	def_grass_wildmons 10 ; encounter rate
	db 30, SEEL
IF DEF(_RED)
	db 28, SLOWPOKE
	db 28, SHELLDER
	db 40, SLOWBRO
	db 24, PSYDUCK
	db 20, ZUBAT
	db 31, GOLBAT
	db 35, GOLDUCK
	db 36, CLOYSTER
	db 40, JYNX
ENDC
IF DEF(_BLUE)
	db 28, SLOWPOKE
	db 28, SHELLDER
	db 40, SLOWBRO
	db 24, PSYDUCK
	db 20, ZUBAT
	db 31, GOLBAT
	db 35, GOLDUCK
	db 36, CLOYSTER
	db 40, JYNX
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

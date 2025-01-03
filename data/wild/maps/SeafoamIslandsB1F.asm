SeafoamIslandsB1FWildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db 30, STARYU
	db 30, SEEL
	db 32, SHELLDER
	db 32, KRABBY
	db 28, SLOWPOKE
	db 36, STARMIE
	db 38, SLOWBRO
	db 36, CLOYSTER
	db 38, DEWGONG
	db 37, KINGLER
ENDC
IF DEF(_BLUE)
	db 30, STARYU
	db 30, SEEL
	db 32, SHELLDER
	db 32, KRABBY
	db 28, SLOWPOKE
	db 36, STARMIE
	db 38, SLOWBRO
	db 36, CLOYSTER
	db 38, DEWGONG
	db 37, KINGLER
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

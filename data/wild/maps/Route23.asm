Route23WildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db 38, ARBOK
ENDC
IF DEF(_BLUE)
	db 38, ARBOK
ENDC
	db 33, DITTO
	db 26, FEAROW
	db 38, PRIMEAPE
	db 38, EXEGGUTOR 
	db 38, PERSIAN
IF DEF(_RED)
	db 38, SANDSLASH
ENDC
IF DEF(_BLUE)
	db 38, SANDSLASH
ENDC
	db 43, CHARIZARD
	db 41, NIDOQUEEN
	db 43, NIDOKING
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

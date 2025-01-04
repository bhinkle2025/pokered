CeruleanCave1FWildMons:
	def_grass_wildmons 10 ; encounter rate
	db 46, GOLBAT
	db 46, HYPNO
	db 46, ARBOK
	db 49, LICKITUNG
	db 49, SLOWBRO
IF DEF(_RED)
	db 52, SANDSLASH
ENDC
IF DEF(_BLUE)
	db 52, ARBOK
ENDC
	db 49, MACHAMP
	db 52, VILEPLUME
	db 53, PRIMEAPE
	db 53, SNORLAX
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

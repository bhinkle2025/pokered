PokemonMansion3FWildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db 30, KOFFING
	db 30, RATICATE
	db 32, PONYTA
	db 34, VULPIX
	db 34, GROWLITHE
	db 37, MAGMAR
	db 31, GRIMER
	db 38, RAPIDASH
	db 38, WEEZING
	db 40, MUK
ENDC
IF DEF(_BLUE)
	db 30, KOFFING
	db 30, RATICATE
	db 32, PONYTA
	db 34, VULPIX
	db 34, GROWLITHE
	db 37, MAGMAR
	db 31, GRIMER
	db 38, RAPIDASH
	db 38, WEEZING
	db 40, MUK
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

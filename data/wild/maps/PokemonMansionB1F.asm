PokemonMansionB1FWildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db 34, KOFFING
	db 34, RATICATE
	db 34, PONYTA
	db 34, VULPIX
	db 34, GROWLITHE
	db 37, MAGMAR
	db 32, GRIMER
	db 40, RAPIDASH
	db 40, WEEZING
	db 42, MUK
ENDC
IF DEF(_BLUE)
	db 34, KOFFING
	db 34, RATICATE
	db 34, PONYTA
	db 34, VULPIX
	db 34, GROWLITHE
	db 37, MAGMAR
	db 32, GRIMER
	db 40, RAPIDASH
	db 40, WEEZING
	db 42, MUK
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

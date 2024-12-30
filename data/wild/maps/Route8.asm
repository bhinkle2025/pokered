Route8WildMons:
	def_grass_wildmons 15 ; encounter rate
	db 18, PIDGEOTTO
IF DEF(_RED)
	db 18, MANKEY
	db 17, EKANS
	db 16, GROWLITHE
	db 20, PIDGEOT
	db 20, RATICATE
	db 19, MEOWTH
	db 17, VULPIX
	db 15, NINETALES
	db 18, ARCANINE
ENDC
IF DEF(_BLUE)
	db 18, MANKEY
	db 17, EKANS
	db 16, GROWLITHE
	db 20, PIDGEOT
	db 20, RATICATE
	db 19, MEOWTH
	db 17, VULPIX
	db 15, NINETALES
	db 18, ARCANINE
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

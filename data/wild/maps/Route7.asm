Route7WildMons:
	def_grass_wildmons 15 ; encounter rate
	db 19, PIDGEY
IF DEF(_RED)
	db 20, VULPIX
	db 20, MANKEY
	db 22, GROWLITHE
	db 22, PIDGEOT
	db 20, PORYGON
	db 20, NINETALES
	db 22, ARCANINE
	db 20, RATICATE 
	db 20, KADABRA
ENDC
IF DEF(_BLUE)
	db 20, VULPIX
	db 20, MANKEY
	db 22, GROWLITHE
	db 22, PIDGEOT
	db 20, PORYGON
	db 20, NINETALES
	db 22, ARCANINE
	db 20, RATICATE 
	db 20, KADABRA
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

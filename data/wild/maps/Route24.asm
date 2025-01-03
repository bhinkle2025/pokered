Route24WildMons:
	def_grass_wildmons 25 ; encounter rate
IF DEF(_RED)
	db  7, METAPOD
	db  8, KAKUNA
	db 12, PIDGEOTTO
	db 12, ODDISH
	db 13, BELLSPROUT
	db 10, ABRA
	db 16, KADABRA
ENDC
IF DEF(_BLUE)
	db  7, METAPOD
	db  8, KAKUNA
	db 12, PIDGEOTTO
	db 12, ODDISH
	db 13, BELLSPROUT
	db 10, ABRA
	db 16, KADABRA
ENDC
	db 13, VENONAT
	db  8, PSYDUCK
	db 12, SQUIRTLE
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

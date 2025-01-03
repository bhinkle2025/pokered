Route25WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db  8, METAPOD
	db  9, KAKUNA
	db 13, PIDGEOTTO
	db 12, ODDISH
	db 13, BELLSPROUT
	db 12, ABRA
	db 14, VENONAT
	db 16, KADABRA
	db  7, PSYDUCK
	db  8, SQUIRTLE
ENDC
IF DEF(_BLUE)
	db  8, METAPOD
	db  9, KAKUNA
	db 13, PIDGEOTTO
	db 12, ODDISH
	db 13, BELLSPROUT
	db 12, ABRA
	db 14, VENONAT
	db 16, KADABRA
	db  7, PSYDUCK
	db  8, SQUIRTLE
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

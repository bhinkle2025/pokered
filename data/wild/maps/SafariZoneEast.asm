SafariZoneEastWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db 16, NIDORAN_M
	db 17, NIDORAN_F
	db 22, NIDORINO
	db 25, NIDORINA
	db 33, RHYHORN
	db 33, NIDOKING
	db 31, NIDOQUEEN
	db 40, RHYDON
	db 33, KANGASKHAN
	db 32, TAUROS
ENDC
IF DEF(_BLUE)
	db 16, NIDORAN_M
	db 17, NIDORAN_F
	db 22, NIDORINO
	db 25, NIDORINA
	db 33, RHYHORN
	db 33, NIDOKING
	db 31, NIDOQUEEN
	db 40, RHYDON
	db 33, KANGASKHAN
	db 32, TAUROS
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

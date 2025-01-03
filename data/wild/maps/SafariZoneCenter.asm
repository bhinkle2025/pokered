SafariZoneCenterWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db 22, EXEGGCUTE
	db 23, PARAS
	db 22, VENONAT
	db 30, PARASECT
	db 25, GLOOM
	db 28, EXEGGUTOR
	db 31, VENOMOTH
	db 30, PINSIR
	db 31, VILEPLUME
ENDC
IF DEF(_BLUE)
	db 22, EXEGGCUTE
	db 23, PARAS
	db 22, VENONAT
	db 30, PARASECT
	db 25, GLOOM
	db 28, EXEGGUTOR
	db 31, VENOMOTH
	db 30, PINSIR
	db 31, VILEPLUME
ENDC
	db 23, CHANSEY
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

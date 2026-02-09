PrizeDifferentMenuPtrs:
	dw PrizeMenuMon1Entries, PrizeMenuMon1Cost
	dw PrizeMenuMon2Entries, PrizeMenuMon2Cost
	dw PrizeMenuTMsEntries,  PrizeMenuTMsCost

NoThanksText:
	db "NO THANKS@"

PrizeMenuMon1Entries:
	db ABRA
	db CLEFAIRY
IF DEF(_RED)
	db SEEL
ENDC
IF DEF(_BLUE)
	db SEEL
ENDC
	db "@"

PrizeMenuMon1Cost:
IF DEF(_RED)
	bcd2 180
	bcd2 500
ENDC
IF DEF(_BLUE)
	bcd2 120
	bcd2 750
ENDC
	bcd2 1200
	db "@"

PrizeMenuMon2Entries:
IF DEF(_RED)
	db PINSIR
	db SCYTHER
ENDC
IF DEF(_BLUE)
	db PINSIR
	db SCYTHER
ENDC
	db PORYGON
	db "@"

PrizeMenuMon2Cost:
IF DEF(_RED)
	bcd2 2500
	bcd2 4600
	bcd2 6500
ENDC
IF DEF(_BLUE)
	bcd2 2500
	bcd2 4600
	bcd2 6500
ENDC
	db "@"

PrizeMenuTMsEntries:
	db PIKACHU
	db VULPIX
	db DRATINI
	db "@"

PrizeMenuTMsCost:
	bcd2 180
	bcd2 500
	bcd2 4000
	db "@"

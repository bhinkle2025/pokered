	db DEX_MUK ; pokedex id

	db 105, 105,  75,  50,  85
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 75 ; catch rate
	db 157 ; base exp

	INCBIN "gfx/pokemon/front/muk.pic", 0, 1 ; sprite dimensions
	dw MukPicFront, MukPicBack

	db POUND, POISON_GAS, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    HYPER_BEAM,   FIRE_PUNCH,   MEGA_DRAIN,   \
	     THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  \
	     SELFDESTRUCT, FIRE_BLAST,   REST,         EXPLOSION,    SUBSTITUTE,   \
		 THUNDERPUNCH, ICE_PUNCH,    ROCK_SLIDE,   DIG,          FLAMETHROWER, \
		 SLUDGE,       NIGHT_SHADE,  GIGA_IMPACT,  STRENGTH
	; end

	db 0 ; padding

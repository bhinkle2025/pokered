	db DEX_ARCANINE ; pokedex id

	db  90, 110,  80,  95,  80
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 75 ; catch rate
	db 213 ; base exp

	INCBIN "gfx/pokemon/front/arcanine.pic", 0, 1 ; sprite dimensions
	dw ArcaninePicFront, ArcaninePicBack

	db ROAR, FLAMETHROWER, BITE, BODY_SLAM ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  HYPER_BEAM,   \
	     DRAGON_RAGE,  DIG,          TELEPORT,     MIMIC,        SOLARBEAM,    \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         FIRE_BLAST,   SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   FLAMETHROWER, OUTRAGE,      \
		 STRENGTH
	; end

	db 0 ; padding

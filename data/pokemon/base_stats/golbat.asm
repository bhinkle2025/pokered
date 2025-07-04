	db DEX_GOLBAT ; pokedex id

	db  75,  80,  70,  90,  75
	;   hp  atk  def  spd  spc

	db POISON, FLYING ; type
	db 90 ; catch rate
	db 171 ; base exp

	INCBIN "gfx/pokemon/front/golbat.pic", 0, 1 ; sprite dimensions
	dw GolbatPicFront, GolbatPicBack

	db ABSORB, SCREECH, BITE, CONFUSE_RAY ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm GIGA_IMPACT,  DOUBLE_EDGE,  SLUDGE,       \
	     HYPER_BEAM,   MEGA_DRAIN,   MIMIC,        DOUBLE_TEAM,  \
	     SWIFT,        REST,         SUBSTITUTE,   CALM_MIND,    \
		 NIGHT_SHADE,  STEEL_WING,   FLY
	; end

	db 0 ; padding

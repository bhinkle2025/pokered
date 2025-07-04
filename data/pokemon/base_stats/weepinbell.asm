	db DEX_WEEPINBELL ; pokedex id

	db  65,  90,  50,  55,  85
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 120 ; catch rate
	db 151 ; base exp

	INCBIN "gfx/pokemon/front/weepinbell.pic", 0, 1 ; sprite dimensions
	dw WeepinbellPicFront, WeepinbellPicBack

	db VINE_WHIP, CALM_MIND, WRAP, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, DOUBLE_EDGE,  SLUDGE,       CALM_MIND,    \
	     MEGA_DRAIN,   SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     REST,         SUBSTITUTE,   CUT,          FLASH
	; end

	db 0 ; padding

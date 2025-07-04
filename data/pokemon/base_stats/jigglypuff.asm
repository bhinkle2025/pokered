	db DEX_JIGGLYPUFF ; pokedex id

	db 115,  45,  20,  20,  25
	;   hp  atk  def  spd  spc

	db NORMAL, FAIRY ; type
	db 170 ; catch rate
	db 76 ; base exp

	INCBIN "gfx/pokemon/front/jigglypuff.pic", 0, 1 ; sprite dimensions
	dw JigglypuffPicFront, JigglypuffPicBack

	db SING, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    LIGHT_SCREEN, \
	     DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     \
	     SUBMISSION,   SEISMIC_TOSS, FIRE_PUNCH,   SOLARBEAM,    \
	     THUNDERBOLT,  THUNDER,      PSYCHIC_M,    CALM_MIND,    MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      FIRE_BLAST,   SKULL_BASH,   DAZZLE,       \
	     REST,         THUNDER_WAVE, AMNESIA,      TRI_ATTACK,   SUBSTITUTE,   \
	     THUNDERPUNCH, ICE_PUNCH,    DREAM_EATER,  DIG,          FLAMETHROWER, \
		 STRENGTH,     FLASH,        NIGHT_SHADE
	; end

	db 0 ; padding

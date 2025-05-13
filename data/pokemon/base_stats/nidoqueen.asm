	db DEX_NIDOQUEEN ; pokedex id

	db  90,  92,  87,  76,  75
	;   hp  atk  def  spd  spc

	db POISON, GROUND ; type
	db 45 ; catch rate
	db 194 ; base exp

	INCBIN "gfx/pokemon/front/nidoqueen.pic", 0, 1 ; sprite dimensions
	dw NidoqueenPicFront, NidoqueenPicBack

	db TACKLE, SCRATCH, TAIL_WHIP, BODY_SLAM ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    SLUDGE,       \
	     GIGA_IMPACT,  DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     OUTRAGE,      \
	     BLIZZARD,     HYPER_BEAM,   SUBMISSION,   COUNTER,      THUNDERPUNCH, \
	     SEISMIC_TOSS, FIRE_PUNCH,   THUNDERBOLT,  THUNDER,      EARTHQUAKE,   \
	     FISSURE,      MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     FIRE_BLAST,   SKULL_BASH,   REST,         ROCK_SLIDE,   SUBSTITUTE,   \
	     ICE_PUNCH,    DIG,          FLAMETHROWER, SURF,         STRENGTH,     \
		 CUT,          NIGHT_SHADE
	; end

	db 0 ; padding

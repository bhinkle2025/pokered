	db DEX_RHYDON ; pokedex id

	db 105, 130, 120,  40,  45
	;   hp  atk  def  spd  spc

	db GROUND, ROCK ; type
	db 60 ; catch rate
	db 204 ; base exp

	INCBIN "gfx/pokemon/front/rhydon.pic", 0, 1 ; sprite dimensions
	dw RhydonPicFront, RhydonPicBack

	db HORN_ATTACK, STOMP, ROCK_THROW, FURY_ATTACK ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    \
	     GIGA_IMPACT,  DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     OUTRAGE,      \
	     BLIZZARD,     HYPER_BEAM,   SUBMISSION,   COUNTER,      THUNDERPUNCH, \
	     SEISMIC_TOSS, FIRE_PUNCH,   THUNDERBOLT,  THUNDER,      EARTHQUAKE,   \
	     DIG,          MIMIC,        DOUBLE_TEAM,  SHADOW_CLAW,                \
	     FIRE_BLAST,   SKULL_BASH,   REST,         ROCK_SLIDE,   SUBSTITUTE,   \
	     ICE_PUNCH,    SWORDS_DANCE, FLAMETHROWER, SURF,         STRENGTH,     \
		 CUT
	; end

	db 0 ; padding

	db DEX_BLASTOISE ; pokedex id

	db  79,  83, 100,  78,  85
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 210 ; base exp

	INCBIN "gfx/pokemon/front/blastoise.pic", 0, 1 ; sprite dimensions
	dw BlastoisePicFront, BlastoisePicBack

	db WATER_GUN, WITHDRAW, BUBBLE, HYDRO_PUMP ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    GIGA_IMPACT,  \
	     DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     OUTRAGE,      \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, ICE_PUNCH,    \
	     EARTHQUAKE,   DIG,          MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      SKULL_BASH,   REST,         SUBSTITUTE,   IRON_DEFENSE, \
	     ROCK_SLIDE,   SURF,         STRENGTH,     FLASH
	; end

	db 0 ; padding

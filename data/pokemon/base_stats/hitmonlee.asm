	db DEX_HITMONLEE ; pokedex id

	db  50, 120,  53,  87, 110
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 139 ; base exp

	INCBIN "gfx/pokemon/front/hitmonlee.pic", 0, 1 ; sprite dimensions
	dw HitmonleePicFront, HitmonleePicBack

	db DOUBLE_KICK, MEDITATE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    GIGA_IMPACT,  \
	     DOUBLE_EDGE,  SUBMISSION,   COUNTER,      SEISMIC_TOSS, ROCK_SLIDE,   \
	     MIMIC,        DOUBLE_TEAM,  METRONOME,    SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   EARTHQUAKE,   SWORDS_DANCE, \
		 STRENGTH
	; end

	db 0 ; padding

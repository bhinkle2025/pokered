	db DEX_KADABRA ; pokedex id

	db  40,  35,  30, 105, 120
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 100 ; catch rate
	db 145 ; base exp

	INCBIN "gfx/pokemon/front/kadabra.pic", 0, 1 ; sprite dimensions
	dw KadabraPicFront, KadabraPicBack

	db TELEPORT, CALM_MIND, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,   \
	     DOUBLE_EDGE,  SUBMISSION,   SEISMIC_TOSS, FIRE_PUNCH,   \
	     DIG,          PSYCHIC_M,    CALM_MIND,    MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      METRONOME,    SKULL_BASH,   REST,         DAZZLE,       \
	     THUNDER_WAVE, TRI_ATTACK,   SUBSTITUTE,   THUNDERPUNCH, NIGHT_SHADE,  \   
		 ICE_PUNCH,    DREAM_EATER,  FLASH
	; end

	db 0 ; padding

	db DEX_GEODUDE ; pokedex id

	db  40,  80, 100,  20,  30
	;   hp  atk  def  spd  spc

	db ROCK, GROUND ; type
	db 255 ; catch rate
	db 86 ; base exp

	INCBIN "gfx/pokemon/front/geodude.pic", 0, 1 ; sprite dimensions
	dw GeodudePicFront, GeodudePicBack

	db TACKLE, ROCK_THROW, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  IRON_DEFENSE, \
	     SUBMISSION,   COUNTER,      SEISMIC_TOSS, FIRE_PUNCH,   EARTHQUAKE,   \
	     FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  \
	     METRONOME,    SELFDESTRUCT, FIRE_BLAST,   REST,         EXPLOSION,    \
	     ROCK_SLIDE,   SUBSTITUTE,   THUNDERPUNCH, FLAMETHROWER, STRENGTH
	; end

	db 0 ; padding

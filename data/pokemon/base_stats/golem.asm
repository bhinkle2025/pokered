	db DEX_GOLEM ; pokedex id

	db  80, 120, 130,  45,  55
	;   hp  atk  def  spd  spc

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 177 ; base exp

	INCBIN "gfx/pokemon/front/golem.pic", 0, 1 ; sprite dimensions
	dw GolemPicFront, GolemPicBack

	db TACKLE, DEFENSE_CURL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    GIGA_IMPACT,  \
	     DOUBLE_EDGE,  HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     FIRE_PUNCH,   EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        \
	     DOUBLE_TEAM,  METRONOME,    SELFDESTRUCT, FIRE_BLAST,   IRON_DEFENSE, \
	     REST,         EXPLOSION,    ROCK_SLIDE,   SUBSTITUTE,   THUNDERPUNCH, \   
		 FLAMETHROWER, STRENGTH
	; end

	db 0 ; padding

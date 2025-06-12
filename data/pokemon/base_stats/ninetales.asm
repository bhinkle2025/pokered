	db DEX_NINETALES ; pokedex id

	db  73,  76,  75, 100, 100
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 75 ; catch rate
	db 178 ; base exp

	INCBIN "gfx/pokemon/front/ninetales.pic", 0, 1 ; sprite dimensions
	dw NinetalesPicFront, NinetalesPicBack

	db FLAMETHROWER, CONFUSE_RAY, EXTRASENSORY, FIRE_SPIN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  HYPER_BEAM,   \
	     DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      DREAM_EATER,  \
	     FIRE_BLAST,   SWIFT,        SKULL_BASH,   REST,         CALM_MIND,    \
	     SUBSTITUTE,   SOLARBEAM,    FLAMETHROWER, NIGHT_SHADE
	; end

	db 0 ; padding

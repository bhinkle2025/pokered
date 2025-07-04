	db DEX_RAPIDASH ; pokedex id

	db  65, 100,  70, 105,  80
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 60 ; catch rate
	db 192 ; base exp

	INCBIN "gfx/pokemon/front/rapidash.pic", 0, 1 ; sprite dimensions
	dw RapidashPicFront, RapidashPicBack

	db EMBER, DOUBLE_KICK, STOMP, FLARE_BLITZ ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  CALM_MIND,    \
	     HYPER_BEAM,   MIMIC,        DOUBLE_TEAM,  REFLECT,      SWORDS_DANCE, \
	     FIRE_BLAST,   SWIFT,        SKULL_BASH,   REST,         \
	     SUBSTITUTE,   SOLARBEAM,    FLAMETHROWER, STRENGTH
	; end

	db 0 ; padding

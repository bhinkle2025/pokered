	db DEX_PIKACHU ; pokedex id

	db  35,  55,  40,  90,  50
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 82 ; base exp

	INCBIN "gfx/pokemon/front/pikachu.pic", 0, 1 ; sprite dimensions
	dw PikachuPicFront, PikachuPicBack

	db THUNDERSHOCK, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    \
	     DOUBLE_EDGE,  SUBMISSION,   SEISMIC_TOSS, THUNDERPUNCH, CALM_MIND,    \
	     THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     SWIFT,        SKULL_BASH,   REST,         THUNDER_WAVE, LIGHT_SCREEN, \
	     SUBSTITUTE,   FLASH,        SURF,         STRENGTH
	; end

	db 0 ; padding

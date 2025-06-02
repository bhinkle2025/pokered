	db DEX_HORSEA ; pokedex id

	db  30,  40,  70,  60,  70
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 225 ; catch rate
	db 83 ; base exp

	INCBIN "gfx/pokemon/front/horsea.pic", 0, 1 ; sprite dimensions
	dw HorseaPicFront, HorseaPicBack

	db BUBBLE, SMOKESCREEN, LEER, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        DOUBLE_EDGE,  BUBBLEBEAM,   OUTRAGE,      \
	     ICE_BEAM,     BLIZZARD,     MIMIC,        DOUBLE_TEAM,  \
	     SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE,   \
	     SURF,         DRAGON_RAGE,  FLASH
	; end

	db 0 ; padding

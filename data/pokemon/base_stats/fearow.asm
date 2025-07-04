	db DEX_FEAROW ; pokedex id

	db  65,  90,  65, 100,  61
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 90 ; catch rate
	db 162 ; base exp

	INCBIN "gfx/pokemon/front/fearow.pic", 0, 1 ; sprite dimensions
	dw FearowPicFront, FearowPicBack

	db PECK, GROWL, SHARPEN, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm GIGA_IMPACT,  DOUBLE_EDGE,  STEEL_WING,   \
	     HYPER_BEAM,   MIMIC,        DOUBLE_TEAM,  \
	     SWIFT,        SKY_ATTACK,   REST,         SUBSTITUTE,   FLY
	; end

	db 0 ; padding

	db DEX_DUGTRIO ; pokedex id

	db  35, 100,  50, 120,  70
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 50 ; catch rate
	db 153 ; base exp

	INCBIN "gfx/pokemon/front/dugtrio.pic", 0, 1 ; sprite dimensions
	dw DugtrioPicFront, DugtrioPicBack

	db FURY_SWIPES, GROWL, DIG, AGILITY ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  HYPER_BEAM,   \
	     EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        SWORDS_DANCE, \
	     DOUBLE_TEAM,  BIDE,         REST,         ROCK_SLIDE,   SLUDGE,       \
		 SUBSTITUTE, CUT
	; end

	db 0 ; padding

; Yellow entry format:
;	db trainerclass, trainerid
;	repeat { db partymon location, partymon move, move id }
;	db 0

SpecialTrainerMoves:
	db BUG_CATCHER, 15
	db 2, 2, TACKLE
	db 2, 3, STRING_SHOT
	db 0

	db YOUNGSTER, 14
	db 1, 4, FISSURE
	db 0

	db BROCK, 1
	db 1, 1, MEGA_PUNCH
	db 1, 4, THUNDERPUNCH
	db 2, 3, ROCK_SLIDE
	db 0

	db MISTY, 1
	db 1, 4, AMNESIA
	db 1, 2, BUBBLEBEAM
	db 0

	db LT_SURGE, 1
	db 1, 1, FLASH
	db 1, 3, THUNDERBOLT
	db 1, 4, DOUBLE_TEAM
	db 2, 1, THUNDERPUNCH
	db 2, 2, ICE_PUNCH
	db 2, 3, THUNDERBOLT
	db 3, 3, SURF
	db 0

	db ERIKA, 1
	db 1, 1, SWORDS_DANCE
	db 2, 1, AMNESIA
	db 2, 3, MEGA_DRAIN
	db 3, 2, MEGA_DRAIN
	db 3, 1, SOLARBEAM
	db 0

	db KOGA, 1
	db 1, 1, SELFDESTRUCT
	db 1, 2, FIRE_BLAST
	db 2, 2, REST
	db 3, 1, FLY
	db 3, 3, LEECH_LIFE
	db 3, 2, DOUBLE_TEAM
	db 4, 1, AMNESIA
	db 4, 2, SLEEP_POWDER
	db 4, 3, SLUDGE
	db 0

	db BLAINE, 1
	db 1, 3, PSYCHIC_M
	db 1, 4, THUNDERPUNCH
	db 2, 1, BODY_SLAM
	db 2, 2, DOUBLE_KICK
	db 2, 4, FLARE_BLITZ
	db 3, 1, SOLARBEAM
	db 3, 2, NIGHT_SHADE
	db 3, 3, CALM_MIND
	db 3, 4, FIRE_BLAST
	db 4, 1, GIGA_IMPACT
	db 4, 2, QUICK_ATTACK
	db 4, 4, SOLARBEAM
	db 5, 1, FLARE_BLITZ
	db 5, 2, REST
	db 0

	db SABRINA, 1
	db 1, 1, AMNESIA
	db 1, 2, REFLECT
	db 1, 3, DAZZLE
	db 2, 1, LOVELY_KISS
	db 2, 2, PSYCHIC_M
	db 2, 3, BLIZZARD
	db 2, 4, CALM_MIND
	db 3, 1, SURF
	db 3, 2, AMNESIA
	db 4, 1, CALM_MIND
	db 0

	db GIOVANNI, 3
	db 1, 1, SWORDS_DANCE
	db 1, 3, FIRE_PUNCH
	db 1, 4, THUNDERPUNCH
	db 2, 1, SWORDS_DANCE
	db 2, 2, SHADOW_CLAW
	db 2, 3, ROCK_SLIDE
	db 3, 1, EARTHQUAKE
	db 3, 2, ICE_PUNCH
	db 3, 3, FIRE_BLAST
	db 3, 4, SLUDGE
	db 4, 1, EARTHQUAKE
	db 4, 2, FIRE_PUNCH
	db 4, 3, THUNDER
	db 4, 4, ACID
	db 5, 1, EARTHQUAKE
	db 5, 2, SWORDS_DANCE
	db 5, 3, GIGA_IMPACT
	db 0

	db LORELEI, 1
	db 1, 2, SURF
	db 2, 4, IRON_DEFENSE
	db 3, 1, SURF
	db 3, 2, ICE_BEAM
	db 4, 1, NIGHT_SHADE
	db 4, 2, LOVELY_KISS
	db 5, 1, BLIZZARD
	db 0

	db BRUNO, 1
	db 1, 1, EXPLOSION
	db 1, 2, DOUBLE_TEAM 
	db 2, 3, SUBMISSION
	db 3, 1, SWORDS_DANCE
	db 3, 2, BLAZE_KICK
	db 4, 1, ICE_PUNCH
	db 4, 3, WATERFALL
	db 4, 4, SUBMISSION
	db 5, 1, EARTHQUAKE
	db 5, 2, ROCK_SLIDE
	db 0

	db AGATHA, 1
	db 1, 1, DOUBLE_TEAM
	db 1, 2, CONFUSE_RAY
	db 1, 3, LEECH_LIFE
	db 1, 4, MEGA_DRAIN
	db 2, 1, SHADOW_CLAW
	db 2, 2, DOUBLE_TEAM
	db 3, 1, BITE
	db 3, 2, GLARE
	db 3, 4, WRAP
	db 4, 2, SLUDGE
	db 4, 3, HYPNOSIS
	db 5, 2, HYPNOSIS
	db 5, 3, DREAM_EATER
	db 5, 4, CALM_MIND
	db 0

	db LANCE, 1
	db 1, 2, FLY
	db 1, 3, WATERFALL
	db 2, 1, THUNDER_WAVE
	db 2, 2, ICE_BEAM
	db 3, 1, HYPER_BEAM
	db 3, 2, ICE_BEAM
	db 4, 1, FLY
	db 4, 2, DRAGON_CLAW
	db 5, 2, FLY
	db 5, 3, GIGA_IMPACT
	db 5, 4, THUNDERPUNCH
	db 0

	db RIVAL3, 1 ; Blastoise Team
	db 1, 1, SKY_ATTACK
	db 1, 2, GIGA_IMPACT
	db 1, 3, STEEL_WING
	db 2, 1, HYPER_BEAM
	db 3, 1, SWORDS_DANCE
	db 3, 4, GIGA_IMPACT
	db 4, 1, FLARE_BLITZ
	db 5, 2, MEGA_DRAIN
	db 5, 4, CALM_MIND
	db 6, 1, ICE_PUNCH
	db 6, 3, GIGA_IMPACT
	db 0

	db RIVAL3, 2 ; Venusaur Team
	db 1, 1, SKY_ATTACK
	db 1, 2, GIGA_IMPACT
	db 1, 3, STEEL_WING
	db 2, 1, HYPER_BEAM
	db 3, 1, SWORDS_DANCE
	db 3, 4, GIGA_IMPACT
	db 4, 1, WATERFALL
	db 4, 3, ICE_BEAM
	db 4, 4, EARTHQUAKE
	db 5, 1, FLARE_BLITZ
	db 6, 1, SLUDGE
	db 6, 3, MEGA_DRAIN
	db 0

	db RIVAL3, 3 ; Charizard Team
	db 1, 1, SKY_ATTACK
	db 1, 2, GIGA_IMPACT
	db 1, 3, STEEL_WING
	db 2, 1, HYPER_BEAM
	db 3, 1, SWORDS_DANCE
	db 3, 4, GIGA_IMPACT
	db 4, 2, MEGA_DRAIN
	db 4, 4, CALM_MIND
	db 5, 1, WATERFALL
	db 5, 3, ICE_BEAM
	db 4, 4, EARTHQUAKE
	db 6, 1, EARTHQUAKE
	db 6, 2, THUNDERPUNCH
	db 6, 3, FIRE_PUNCH
	db 6, 4, SWORDS_DANCE
	db 0

	db -1 ; end

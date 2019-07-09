	dw 00251
	db 100, 100, 100, 100, 100, 100
	evs  3,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, GRASS ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, LUM_BERRY ; items
	dn GENDERLESS, 15 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/celebi/front.dimensions"
	db NATURAL_CURE, NATURAL_CURE	; abilities
	db MAGIC_GUARD	; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tmhm
	tmhm CURSE, CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, GIGA_DRAIN, SAFEGUARD, SOLAR_BEAM, RETURN, PSYCHIC, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SANDSTORM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, DAZZLINGLEAM, ENERGY_BALL, ENDURE, WATER_PULSE, GIGA_IMPACT, U_TURN, FLASH, THUNDER_WAVE, SWORDS_DANCE, CUT, DEFENSE_CURL, DOUBLE_EDGE, DREAM_EATER, EARTH_POWER, SEED_BOMB, SKILL_SWAP, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, TRICK, ZEN_HEADBUTT
	; end

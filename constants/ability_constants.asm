; ability constants
	const_def
	const NO_ABILITY
	const STENCH
	const DRIZZLE
	const SPEED_BOOST
	const BATTLE_ARMOR
	const STURDY
	const DAMP
	const LIMBER
	const SAND_VEIL
	const STATIC
	const VOLT_ABSORB
	const WATER_ABSORB
	const OBLIVIOUS
	const CLOUD_NINE
	const COMPOUND_EYES
	const INSOMNIA
	const IMMUNITY
	const FLASH_FIRE
	const SHIELD_DUST
	const OWN_TEMPO
	const SUCTION_CUPS
	const INTIMIDATE
	const SHADOW_TAG
	const LEVITATE
	const EFFECT_SPORE
	const SYNCHRONIZE
	const CLEAR_BODY
	const NATURAL_CURE
	const LIGHTNING_ROD
	const SERENE_GRACE
	const SWIFT_SWIM
	const CHLOROPHYLL
	const ILLUMINATE
	const TRACE
	const HUGE_POWER
	const POISON_POINT
	const INNER_FOCUS
	const MAGMA_ARMOR
	const WATER_VEIL
	const MAGNET_PULL
	const SOUNDPROOF
	const RAIN_DISH
	const SAND_STREAM
	const PRESSURE
	const THICK_FAT
	const EARLY_BIRD
	const FLAME_BODY
	const RUN_AWAY
	const KEEN_EYE
	const HYPER_CUTTER
	const PICKUP
	const HUSTLE
	const CUTE_CHARM
	const STICKY_HOLD
	const SHED_SKIN
	const GUTS
	const MARVEL_SCALE
	const LIQUID_OOZE
	const OVERGROW
	const BLAZE
	const TORRENT
	const SWARM
	const ROCK_HEAD
	const DROUGHT
	const ARENA_TRAP
	const VITAL_SPIRIT
	const SHELL_ARMOR
	const TANGLED_FEET
	const MOTOR_DRIVE
	const RIVALRY
	const STEADFAST
	const SNOW_CLOAK
	const GLUTTONY
	const ANGER_POINT
	const UNBURDEN
	const DRY_SKIN
	const DOWNLOAD
	const IRON_FIST
	const POISON_HEAL
	const ADAPTABILITY
	const SKILL_LINK
	const HYDRATION
	const SOLAR_POWER
	const QUICK_FEET
	const SNIPER
	const MAGIC_GUARD
	const NO_GUARD
	const TECHNICIAN
	const LEAF_GUARD
	const MOLD_BREAKER
	const SUPER_LUCK
	const AFTERMATH
	const ANTICIPATION
	const FOREWARN
	const UNAWARE
	const TINTED_LENS
	const FILTER
	const SCRAPPY
	const ICE_BODY
	const SOLID_ROCK
	const SNOW_WARNING
	const FRISK
	const RECKLESS
	const PICKPOCKET
	const SHEER_FORCE
	const UNNERVE
	const DEFIANT
	const CURSED_BODY
	const WEAK_ARMOR
	const MULTISCALE
	const HARVEST
	const MOODY
	const OVERCOAT
	const POISON_TOUCH
	const REGENERATOR
	const BIG_PECKS
	const SAND_RUSH
	const WONDER_SKIN
	const ANALYTIC
	const IMPOSTER
	const INFILTRATOR
	const MOXIE
	const JUSTIFIED
	const RATTLED
	const MAGIC_BOUNCE
	const SAP_SIPPER
	const PRANKSTER
	const SAND_FORCE
	const FUR_COAT
	const COMPETITIVE
	const PIXILATE
	const TANGLING_HAIR
	const REFRIGERATE ;raptor 
	const SLUSH_RUSH ;raptor 
	const STANCE_CHANGE ;raptor 
	const POWER_OF_ALCHEMY ;raptor 
	const RECIEVER ;raptor 
	const ILLUSION ;raptor 
	const REVERSE_AURA ;thalins 
	const SOUL_HEART ;thalins 
	const STORM_DRAIN ;raptor 
	const MUMMY ;raptor 
	const HEAVY_METAL ;thalins 
	const RKS_SYSTEM ;raptor 
	const TOUGH_CLAWS ;raptor
	const POWER_CONSTRUCT ;thalins 
	const BERSERK ;raptor
	const GALE_WINGS ;raptor
	const TOXIC_BOOST ;thalins

NUM_ABILITIES EQU const_value
;abilities we nned to implement or simply replace
placeholder_zero: macro
\1 EQU 0
endm
	placeholder_zero DISGUISE ;thalins
	;placeholder_zero TOXIC_BOOST ;thalins ; basically just guts but only for poison
	placeholder_zero MAGICIAN ;thalins ;similar to pickpocket but its when you attack instead of get hit
	placeholder_zero DEFEATIST ;thalins
	placeholder_zero TRUANT ;thalins
	placeholder_zero BULLETPROOF ;thalins
	placeholder_zero CONTRARY ;thalins

	placeholder_zero ROUGH_SKIN ;raptor
	placeholder_zero IRON_BARBS ;raptor ;clone of rough skin
	placeholder_zero WATER_BUBBLE ; raptor ;huge power but just for water
	placeholder_zero FLUFFY ;raptor

	placeholder_zero FLOWER_VEIL ;fear ;since no doubles it becomes a clone of cear body
	placeholder_zero SWEET_VEIL ;fear ;with no doubles it becomes a clone of insomnia
	placeholder_zero HONEY_GATHER ;fear ;can probably copy some code from pickup
	placeholder_zero WHITE_SMOKE ;fear ;clone of clear body
	placeholder_zero GOOEY	;fear
	placeholder_zero KLUTZ ;fear
	placeholder_zero HEAT_PROOF ;fear

	placeholder_zero FRIEND_GUARD ;for doubles and should be removed or replaced
	placeholder_zero SYMBIOSIS ;for doubles and should be removed or replaced

	placeholder_zero LIGHT_METAL
	placeholder_zero HEALER
	placeholder_zero TELEPATHY
	placeholder_zero PLUS
	placeholder_zero MINUS
	placeholder_zero AIR_LOCK
	placeholder_zero PROTEAN
	placeholder_zero COLOR_CHANGE
	placeholder_zero FORECAST
	placeholder_zero SIMPLE
	placeholder_zero PURE_POWER
	placeholder_zero STALL
	placeholder_zero NORMALIZE
	placeholder_zero WONDER_GUARD

ABILITY_1      EQU %00100000
ABILITY_2      EQU %01000000
HIDDEN_ABILITY EQU %01100000

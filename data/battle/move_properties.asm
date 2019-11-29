MoveProperties::
ContactMoves::
	dw AERIAL_ACE
	dw AQUA_TAIL
	dw ASTONISH
	dw BITE
	dw BODY_SLAM
	dw BUG_BITE
	dw BULLET_PUNCH
	dw CLOSE_COMBAT
	dw COUNTER
	dw CRABHAMMER
	dw CROSS_CHOP
	dw CRUNCH
	dw CUT
	dw DIG
	dw DIZZY_PUNCH
	dw DOUBLE_KICK
	dw DOUBLE_EDGE
	dw DRAGON_CLAW
	dw DRAIN_KISS
	dw DRAIN_PUNCH
	dw DRILL_PECK
	dw DYNAMICPUNCH
	dw EXTREMESPEED
	dw FALSE_SWIPE
	dw FEINT_ATTACK
	dw FIRE_PUNCH
	dw FLAME_WHEEL
	dw FLARE_BLITZ
	dw FLY
	dw FURY_STRIKES
	dw GYRO_BALL
	dw GIGA_IMPACT
	dw HEADBUTT
	dw HI_JUMP_KICK
	dw HORN_ATTACK
	dw HYPER_FANG
	dw ICE_PUNCH
	dw IRON_HEAD
	dw IRON_TAIL
	dw KARATE_CHOP
	dw KNOCK_OFF
	dw LEECH_LIFE
	dw LICK
	dw LOW_KICK
	dw MACH_PUNCH
	dw MEGAHORN
	dw METAL_CLAW
	dw NIGHT_SLASH
	dw OUTRAGE
	dw PECK
	dw PETAL_DANCE
	dw PLAY_ROUGH
	dw POISON_JAB
	dw POWER_WHIP
	dw PURSUIT
	dw QUICK_ATTACK
	dw RAGE
	dw RAPID_SPIN
	dw RETURN
	dw REVERSAL
	dw ROCK_SMASH
	dw ROLLOUT
	dw SCRATCH
	dw SEISMIC_TOSS
	dw SHADOW_CLAW
	dw SLASH
	dw SPARK
	dw STEEL_WING
	dw STOMP
	dw STRENGTH
	dw SUPER_FANG
	dw TACKLE
	dw TAKE_DOWN
	dw THIEF
	dw THRASH
	dw THUNDERPUNCH
	dw U_TURN
	dw VINE_WHIP
	dw WATERFALL
	dw WILD_CHARGE
	dw WING_ATTACK
	dw WRAP
	dw X_SCISSOR
	dw ZEN_HEADBUTT
	db 0

PowderMoves::
	dw POISONPOWDER
	dw SLEEP_POWDER
	dw SPORE
	dw STUN_SPORE
	db 0

PunchingMoves::
	dw BULLET_PUNCH
	dw DIZZY_PUNCH
	dw DRAIN_PUNCH
	dw DYNAMICPUNCH
	dw FIRE_PUNCH
	dw MACH_PUNCH
	dw THUNDERPUNCH
	db 0

SoundMoves::
	dw BUG_BUZZ
	dw DISARM_VOICE
	dw GROWL
	dw HYPER_VOICE
	dw PERISH_SONG
	dw ROAR
	dw SCREECH
	dw SING
	dw SUPERSONIC
	db 0

SubstituteBypassMoves::
; used by Magic Bounce so it can check Substitute unconditionally as long as it isn't here
; (Sound moves aren't included)
	dw ATTRACT
	dw DISABLE
	dw ENCORE
	dw FORESIGHT
	dw SPIKES
	dw TOXIC_SPIKES
	db -1

DynamicPowerMoves::
; used by Forewarn and for move power listing
	dw COUNTER
	dw DRAGON_RAGE
	dw GYRO_BALL
;   dw LOW_KICK
	dw MAGNITUDE
	dw MIRROR_COAT
	dw NIGHT_SHADE
	dw RETURN
	dw REVERSAL
	dw SEISMIC_TOSS
	dw SONIC_BOOM
	dw SUPER_FANG
	db -1
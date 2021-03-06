	const_def 2 ; object constants
	const TEMP_MYSTERY_DUNGEON_NPC
	const TEMP_BUGSY

DanielsTown_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 25,  7, KRISS_HOUSE_1F, 2
	warp_event 20,  7, DAYCARE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	;object_event 15,  7, SPRITE_FOLLOWER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, START_OF_CYCLE_EXIST, END_OF_CYCLE_EXIST, OW_NPC1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, DTFollow, -1
	object_event 15,  8, SPRITE_KRIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, START_OF_CYCLE_EXIST, END_OF_CYCLE_EXIST, OW_NPC1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, GivePokemonScript, -1
	object_event  7, 25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, START_OF_CYCLE_EXIST, END_OF_CYCLE_EXIST, OW_NPC1, PAL_NPC_RED, PERSONTYPE_TRAINER, 2, TrainerYoungsterJoey, -1
	;object_event 10, 8, SPRITE_KRIS,  SPRITEMOVEDATA_STANDING_LEFT, 0, 0, START_OF_CYCLE_EXIST, END_OF_CYCLE_EXIST, OW_NPC1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, checkpokegroupscript, -1
	;object_event 11, 8, SPRITE_KRIS,  SPRITEMOVEDATA_STANDING_LEFT, 0, 0, START_OF_CYCLE_EXIST, END_OF_CYCLE_EXIST, OW_NPC1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, setjohtoscript, -1

	const_def 2
	const TEST_FOLLOWER

DTFollow:
	follow PLAYER, TEST_FOLLOWER
	applymovement PLAYER, DTFollowTestMovementData
	stopfollow
	end

DTFollowTestMovementData:
	step_left
	step_end

setjohtoscript:
	;loadvar wPartyMon1Group, GROUP_GENERATION_THREE
	end

checkpokegroupscript:
	opentext
	checkcode VAR_PARTYMON1_GROUP
	ifequal GROUP_GENERATION_ONE, .kanto
	ifequal GROUP_GENERATION_TWO, .johto
	ifequal GROUP_GENERATION_THREE, .hoenn
	closetext
	end
.kanto
	writetext kantotext
	waitbutton
	closetext
	end
.johto
	writetext johtotext
	waitbutton
	closetext
	end
.hoenn
	writetext hoenntext
	waitbutton
	closetext
	end

GivePokemonScript:
	opentext
	;givepoke BULBASAUR, 5, NO_ITEM, 0, POKE_BALL;, SHINY_MASK | ABILITY_1, $2345, AlolaName, IndigoOT
	givepoke SQUIRTLE, 5, NO_ITEM, 0, POKE_BALL;, SHINY_MASK | ABILITY_1, $2345, AlolaName, IndigoOT
	givepoke UMBREON, 5, NO_ITEM, 0, POKE_BALL, SHINY_MASK | ABILITY_1;, $2345, AlolaName, IndigoOT
	;givepoke TURTWIG, 5, NO_ITEM, 0, POKE_BALL;, SHINY_MASK | ABILITY_1, $2345, AlolaName, IndigoOT
	givepoke SNIVY, 5, NO_ITEM, 0, POKE_BALL;, SHINY_MASK | ABILITY_1, $2345, AlolaName, IndigoOT
	givepoke LUXIO, 5, NO_ITEM, 0, POKE_BALL;, SHINY_MASK | ABILITY_1, $2345, AlolaName, IndigoOT
	closetext
	end

kantotext:
	text "kanto"
	done
johtotext:
	text "johto"
	done
hoenntext:
	text "hoenn"
	done

AlolaName:
	db "Alola@"
KantoName:
	db "Kanto@"
IndigoName:
	db "Indigo@"
IndigoOT:
	db "Ken@"
	db MALE


	;callasm MysteryDungeonSetup
	;special WarpToSpawnPoint
	;newloadmap MAPSETUP_TELEPORT
	;writecode VAR_MOVEMENT, PLAYER_NORMAL
	;end

MysteryDungeonSetup:
	ld a, 5
	;ld [wMysteryDungeonX], a
	;ld [wMysteryDungeonY], a
	ld a, 8
	call RandomRange
	add 8
	;ld [wMysteryDungeonSeed], a
	ld a, SPAWN_MYSTERY_DUNGEON
	ld [wDefaultSpawnpoint], a
	ret

; TEMP
TrainerYoungsterJoey:
	trainer YOUNGSTER, JOEY1, EVENT_BEAT_YOUNGSTER_JOEY, YoungsterJoey1SeenText, YoungsterJoey1BeatenText, 0, .Script
.Script:
	end

YoungsterJoey1SeenText:
	text "I just lost, so"
	line "I'm trying to find"
	cont "more Pokémon."

	para "Wait! You look"
	line "weak! Come on,"
	cont "let's battle!"
	done

YoungsterJoey1BeatenText:
	text "Ack! I lost again!"
	line "Doggone it!"
	done

YoungsterJoey1AfterText:
	text "Do I have to have"
	line "more Pokémon in"

	para "order to battle"
	line "better?"

	para "No! I'm sticking"
	line "with this one no"
	cont "matter what!"
	done

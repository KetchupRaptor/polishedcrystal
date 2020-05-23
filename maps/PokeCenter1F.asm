AzaleaPokeCenter1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  5,  7, AZALEA_TOWN, 1
	warp_event  6,  7, AZALEA_TOWN, 1
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event 10,  1, SIGNPOST_READ, PokemonJournalBugsyScript

	db 5 ; object events
	pc_nurse_event  5, 1
	object_event  8,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, START_OF_CYCLE_EXIST, END_OF_CYCLE_EXIST, 0, PERSONTYPE_SCRIPT, 0, AzaleaPokeCenter1FCooltrainermScript, -1
	object_event 11,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, START_OF_CYCLE_EXIST, END_OF_CYCLE_EXIST, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, AzaleaPokeCenter1FGentlemanText, -1
	object_event  8,  1, SPRITE_SIGHTSEER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, START_OF_CYCLE_EXIST, END_OF_CYCLE_EXIST, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, AzaleaPokeCenter1FSightseermText, -1
	object_event  2,  5, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WANDER, 2, 1, START_OF_CYCLE_EXIST, END_OF_CYCLE_EXIST, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, AzaleaPokeCenter1FPokefanfText, -1

PokemonJournalBugsyScript:
	setflag ENGINE_READ_BUGSY_JOURNAL
	thistext

	text "Pokémon Journal"

	para "Special Feature:"
	line "Leader Bugsy!"

	para "Bugsy is reported"
	line "to have won the"

	para "Bug-Catching Con-"
	line "test so often that"

	para "he no longer par-"
	line "ticipates."
	done

AzaleaPokeCenter1FCooltrainermScript:
	checktime 1 << MIDNIGHT
	iftrue_jumptextfaceplayer .NiteText
	thistextfaceplayer

	text "For a guy who"
	line "makes # Balls,"

	para "Kurt isn't much of"
	line "a trainer."

	para "He does have a"
	line "Pokémon, but he"

	para "doesn't use it"
	line "much."
	done

.NiteText:
	text "Kurt and Prof.Oak"
	line "are old friends."

	para "They're also close"
	line "with Agatha, a"

	para "former member of"
	line "the Elite Four."
	done

AzaleaPokeCenter1FGentlemanText:
	text "Do your Pokémon"
	line "know HM moves?"

	para "Those moves can"
	line "be used even if"

	para "your Pokémon has"
	line "fainted."
	done

AzaleaPokeCenter1FSightseermText:
	text "This Bill guy"
	line "created the system"

	para "for storing"
	line "Pokémon in a PC."

	para "Bill's PC can"
	line "store up to 20"
	cont "Pokémon per Box."
	done

AzaleaPokeCenter1FPokefanfText:
	text "Do you know about"
	line "Apricorns?"

	para "Crack one open,"
	line "hollow it out and"

	para "fit it with a"
	line "special device."

	para "Then you can catch"
	line "Pokémon with it."

	para "Before # Balls"
	line "were invented,"

	para "everyone used"
	line "Apricorns."
	done

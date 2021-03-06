MainMenu: ; 49cdc
	call InitVariableWidthText
	call DeleteSavedMusic
	call Function49ed0
	ld b, CGB_DIPLOMA
	call GetCGBLayout
	call SetPalettes
	ld hl, wGameTimerPause
	res 0, [hl]
	call MainMenu_GetWhichMenu
	ld [wWhichIndexSet], a
	call MainMenu_PrintCurrentTimeAndDay
	ld hl, .MenuDataHeader
	call LoadMenuDataHeader
	call MainMenuJoypadLoop
	call CloseWindow
	ret c
	call ClearTileMap
	ld a, [wMenuSelection]
	ld hl, .Jumptable
	rst JumpTable
	jr MainMenu
; 49d14

.MenuDataHeader: ; 49d14
	db $40 ; flags
	db 00, 00 ; start coords
	db 07, 16 ; end coords
	dw .MenuData2
	db 1 ; default option
; 49d1c

.MenuData2: ; 49d1c
	db $80 ; flags
	db 0 ; items
	dw MainMenuItems
	dw PlaceMenuStrings
	dw .Strings
; 49d20

.Strings: ; 49d24
	db "Continue@"
	db "New Game@"
	db "New Game+@"
	db "Options@"
	db "Music Player@"

.Jumptable: ; 0x49d60
	dw MainMenu_Continue
	dw MainMenu_NewGame
	dw MainMenu_NewGamePlus
	dw MainMenu_Options
	dw MainMenu_MusicPlayer
; 0x49d6c

CONTINUE       EQU 0
NEW_GAME       EQU 1
NEW_GAME_PLUS  EQU 2
OPTION         EQU 3
MUSIC_PLAYER   EQU 4

MainMenuItems:
; .NewGameMenu: ; 0x49d6c
	db 3
	db NEW_GAME
	db OPTION
	db MUSIC_PLAYER
	db -1
; .ContinueMenu: ; 0x49d70
	db 4
	db CONTINUE
	db NEW_GAME
	db OPTION
	db MUSIC_PLAYER
	db -1
; .NewGamePlusMenu:
	db 5
	db CONTINUE
	db NEW_GAME
	db NEW_GAME_PLUS
	db OPTION
	db MUSIC_PLAYER
	db -1

MainMenu_GetWhichMenu: ; 49da4
	ld a, [wSaveFileExists]
	and a
	jr nz, .next
	xor a ; New Game
	ret

.next
	ld a, BANK(sPlayerData)
	call GetSRAMBank
	ld hl, sPlayerData + (wEventFlags + (EVENT_BEAT_LEAF >> 3)) - wPlayerData
	ld de, wEventFlags + (EVENT_BEAT_LEAF >> 3)
	ld a, [hl]
	ld [de], a
	call CloseSRAM
	eventflagcheck EVENT_BEAT_LEAF
	jr nz, .next2
	ld a, $1 ; Continue
	ret

.next2
	ld a, $2 ; New Game+
	ret
; 49de4

MainMenuJoypadLoop: ; 49de4
	call SetUpMenu
	call MainMenu_PrintCurrentTimeAndDay
.loop
	ld a, [w2DMenuFlags1]
	set 5, a
	ld [w2DMenuFlags1], a
	call ReadMenuJoypad
	ld a, [wMenuJoypad]
	cp B_BUTTON
	jr z, .b_button
	cp A_BUTTON
	jr z, .a_button
	jr .loop

.a_button
	call PlayClickSFX
	and a
	ret

.b_button
	scf
	ret
; 49e09

MainMenu_PrintCurrentTimeAndDay: ; 49e09
	ld a, [wSaveFileExists]
	and a
	ret z
	xor a
	ldh [hBGMapMode], a
	call .PlaceBox
	ld hl, wOptions1
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]
	call .PlaceTime
	pop af
	ld [wOptions1], a
	ld a, $1
	ldh [hBGMapMode], a
	ret
; 49e27


.PlaceBox: ; 49e27
	hlcoord 0, 14
	lb bc, 2, 18
	jp TextBox
; 49e3d

.PlaceTime: ; 49e3d
	ld a, [wSaveFileExists]
	and a
	ret z

	call UpdateTime
	ld hl, wGameSaveTime
	ld a, [hli]
	ld [wCurDay], a
	ld a, [hli]
	ldh [hHours], a
	ld a, [hli]
	ldh [hMinutes], a
	ld a, [hli]
	ldh [hSeconds], a

	VWTextStart $b0
	call InitVariableWidthTiles
	call GetWeekday
	ld b, a
	hlcoord 1, 15
	call PrintDayOfWeek
	decoord 4, 16
	ldh a, [hHours]
	ld c, a
	farcall PrintHour
	ld [hl], "<COLON>"
	inc hl
	ld de, hMinutes
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	predef_jump PrintNum
; 49e75

.PrintTimeNotSet: ; 49e75
	hlcoord 1, 14
	ld de, .TimeNotSet
	jp PlaceString
; 49e7f

.TimeNotSet: ; 49e7f
	db "Time not set@"
; 49e8c

; 49ed0

Function49ed0: ; 49ed0
	xor a
	ldh [hMapAnims], a
	call ClearTileMap
	call LoadFontsExtra
	call LoadStandardFont
	jp ClearWindowData
; 49ee0


MainMenu_NewGame: ; 49ee0
	farjp NewGame
; 49ee7

MainMenu_NewGamePlus:
	farjp NewGamePlus

MainMenu_Options: ; 49ee7
	farjp OptionsMenu
; 49eee

MainMenu_Continue: ; 49eee
	farjp Continue
; 49ef5

MainMenu_MusicPlayer:
	farjp MusicPlayer

INCLUDE "data/mon_menu.asm"

MonSubmenu: ; 24d19
	xor a
	ldh [hBGMapMode], a
	call GetMonSubmenuItems
	farcall FreezeMonIcons
	ld hl, .MenuDataHeader
	call LoadMenuDataHeader
	call .GetTopCoord
	call PopulateMonMenu

	ld a, 1
	ldh [hBGMapMode], a
	call MonMenuLoop
	ld [wMenuSelection], a

	jp ExitMenu
; 24d3f

.MenuDataHeader: ; 24d3f
	db $40 ; tile backup
	db 00, 13 ; start coords
	db 17, 19 ; end coords
	dw 0
	db 1 ; default option
; 24d47

.GetTopCoord: ; 24d47
; TopCoord = 1 + BottomCoord - 2 * (NumSubmenuItems + 1)
	ld a, [wBuffer1]
	inc a
	add a
	ld b, a
	ld a, [wMenuBorderBottomCoord]
	sub b
	inc a
	ld [wMenuBorderTopCoord], a
	jp MenuBox
; 24d59

MonMenuLoop: ; 24d59
.loop
	ld a, $a0 ; flags
	ld [wMenuData2Flags], a
	ld a, [wBuffer1] ; items
	ld [wMenuData2Items], a
	call InitVerticalMenuCursor
	ld hl, w2DMenuFlags1
	set 6, [hl]
	call DoMenuJoypadLoop
	ldh a, [hJoyPressed]
	bit 0, a ; A
	jr nz, .select
	bit 1, a ; B
	jr nz, .cancel
	jr .loop

.cancel
	ld de, SFX_CANCEL
	call PlaySFX
	ld a, MONMENU_CANCEL ; CANCEL
	ret

.select
	ld de, SFX_ACCEPT
	call PlaySFX
	ld a, [wMenuCursorY]
	dec a
	ld c, a
	ld b, 0
	ld hl, wBuffer2
	add hl, bc
	ld a, [hl]
	ret
; 24d91

PopulateMonMenu: ; 24d91
	call MenuBoxCoord2Tile
	ld bc, $2a ; 42
	add hl, bc
	ld de, wBuffer2
.loop
	ld a, [de]
	inc de
	cp -1
	ret z
	push de
	push hl
	call GetMonMenuString
	pop hl
	call PlaceString
	ld bc, $28 ; 40
	add hl, bc
	pop de
	jr .loop
; 24db0

GetMonMenuString: ; 24db0
	ld hl, MonMenuOptions + 1
	ld de, 3
	call IsInArray
	dec hl
	ld a, [hli]
	cp MONMENU_MENUOPTION
	jr z, .NotMove
	inc hl
	ld a, [hl]
	ld [wd265], a
	jp GetMoveName

.NotMove:
	inc hl
	ld a, [hl]
	dec a
	ld hl, MonMenuOptionStrings
	call GetNthString
	ld d, h
	ld e, l
	ret
; 24dd4

GetMonSubmenuItems: ; 24dd4
	call ResetMonSubmenu
	ld a, [wCurPartySpecies]
	cp EGG
	jr z, .egg
	ld a, [wLinkMode]
	and a
	jr nz, .skip_moves
	ld a, MON_MOVES
	predef GetPartyParamLocation
	ld d, h
	ld e, l
	ld c, NUM_MOVES
.loop
	push bc
	push de
	ld a, [de]
	and a
	jr z, .next
	push hl
	call IsFieldMove
	pop hl
	jr nc, .next
	;call AddMonMenuItem ; TEMP

.next
	pop de
	inc de
	pop bc
	dec c
	jr nz, .loop

.skip_moves
	ld a, MONMENU_STATS
	call AddMonMenuItem
	ld a, MONMENU_MOVE
	call AddMonMenuItem
	ld a, MONMENU_SWITCH
	call AddMonMenuItem

	ld a, [wPlayerOverworldStatus]
	bit PLAYER_PARTY_SPLIT_F, a
	jr nz, .skip_follow_action

	ld a, MON_MOOD
	predef GetPartyParamLocation
	ld a, [hl]
	and MON_SPECIAL
	cp MON_IS_PLAYER
	jr z, .skip_follow_action

	ld a, [wFollowerStatus]
	and FOLLOWER_MASK
	dec a
	ld b, a
	ld a, [wCurPartyMon]
	cp b
	ld a, MONMENU_FOLLOW
	jr nz, .not_following
	ld a, MONMENU_STOPFOLLOW
.not_following:
	call AddMonMenuItem

.skip_follow_action
	ld a, [wLinkMode]
	and a
	jr nz, .skip2
	push hl
	ld a, MON_ITEM
	predef GetPartyParamLocation
	ld d, [hl]
	pop hl
	ld a, MONMENU_ITEM

	call AddMonMenuItem

.skip2
	ld a, [wBuffer1]
	cp NUM_MON_SUBMENU_ITEMS
	jr z, .ok2
	ld a, MONMENU_CANCEL
	call AddMonMenuItem

.ok2
	jp TerminateMonSubmenu

.egg
	ld a, MONMENU_STATS
	call AddMonMenuItem
	ld a, MONMENU_SWITCH
	call AddMonMenuItem
	ld a, MONMENU_CANCEL
	call AddMonMenuItem
	jp TerminateMonSubmenu
; 24e52

IsFieldMove: ; 24e52
	ld b, a
	ld hl, MonMenuOptions
.next
	ld a, [hli]
	cp -1
	ret z
	cp MONMENU_MENUOPTION
	ret z
	ld d, [hl]
	inc hl
	ld a, [hli]
	cp b
	jr nz, .next
	ld a, d
	scf
	ret
; 24e68

ResetMonSubmenu: ; 24e68
	xor a
	ld [wBuffer1], a
	ld hl, wBuffer2
	ld bc, NUM_MON_SUBMENU_ITEMS + 1
	jp ByteFill
; 24e76

TerminateMonSubmenu: ; 24e76
	ld a, [wBuffer1]
	ld e, a
	ld d, $0
	ld hl, wBuffer2
	add hl, de
	ld [hl], -1
	ret
; 24e83

AddMonMenuItem: ; 24e83
	push hl
	push de
	push af
	ld a, [wBuffer1]
	ld e, a
	inc a
	ld [wBuffer1], a
	ld d, $0
	ld hl, wBuffer2
	add hl, de
	pop af
	ld [hl], a
	pop de
	pop hl
	ret
; 24e99

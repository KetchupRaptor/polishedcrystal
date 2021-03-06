DisplayUsedMoveText: ; 105db0
; battle command 03

	ldh a, [hBattleTurn]
	and a
	jr nz, .start

	ld a, [wPlayerMoveStruct + MOVE_ANIM]
	call UpdateUsedMoves

.start
	ld a, BATTLE_VARS_LAST_MOVE
	call GetBattleVarAddr
	ld d, h
	ld e, l

	ld a, BATTLE_VARS_LAST_COUNTER_MOVE
	call GetBattleVarAddr

	ld a, BATTLE_VARS_MOVE_ANIM
	call GetBattleVar
	ld a, c
	ld [wNamedObjectIndexBuffer], a
	ld a, b
	ld [wNamedObjectIndexBuffer+1], a

	push hl
	farcall CheckUserIsCharging
	pop hl
	jr nz, .charging

	; update last move
	ld a, [wNamedObjectIndexBuffer]
	ld [hl], a
	ld [de], a
	inc de
	inc hl
	ld a, [wNamedObjectIndexBuffer+1]
	ld [hl], a
	ld [de], a

.charging
	; check obedience
	ld hl, UsedMoveText
	ld a, [wAlreadyDisobeyed]
	and a
	jr z, .ok
	ld hl, UsedMoveInsteadText
.ok
	call StdBattleTextBox
	jp ApplyTilemapInVBlank
; 105db9


UpdateUsedMoves: ; 105ed0
; append move a to wPlayerUsedMoves unless it has already been used

	push bc
; start of list
	ld hl, wPlayerUsedMoves
; get move id
	ld b, a
; next count
	ld c, NUM_MOVES

.loop
; get move from the list
	ld a, [hli]
; not used yet?
	and a
	jr z, .add
; already used?
	cp b
	jr z, .quit
; next byte
	dec c
	jr nz, .loop

; if the list is full and the move hasn't already been used
; shift the list back one byte, deleting the first move used
; this can occur with struggle or a new learned move
	ld hl, wPlayerUsedMoves + 1
; 1 = 2
	ld a, [hld]
	ld [hli], a
; 2 = 3
	inc hl
	ld a, [hld]
	ld [hli], a
; 3 = 4
	inc hl
	ld a, [hld]
	ld [hl], a
; 4 = new move
	ld a, b
	ld [wPlayerUsedMoves + 3], a
	jr .quit

.add
; go back to the byte we just inced from
	dec hl
; add the new move
	ld [hl], b

.quit
; list updated
	pop bc
	ret
; 105ef6

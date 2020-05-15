BlankScreen: ; 8000
	call DisableSpriteUpdates
	xor a
	ldh [hBGMapMode], a
	call ClearBGPalettes
	call ClearSprites
	hlcoord 0, 0
	ld bc, wTileMapEnd - wTileMap
	ld a, " "
	call ByteFill
	hlcoord 0, 0, wAttrMap
	ld bc, wAttrMapEnd - wAttrMap
	ld a, $7
	call ByteFill
	call ApplyAttrAndTilemapInVBlank
	jp SetPalettes

SpawnPlayer: ; 8029
	ld a, NO_FOLLOWER
	ld [wObjectFollow_Leader], a
	ld [wObjectFollow_Follower], a
	xor a ; 0 for PLAYER
	ld hl, PlayerObjectTemplate
	call CopyPlayerObjectTemplate
	ld b, PLAYER
	call PlayerSpawn_ConvertCoords
	xor a ; 0 for PLAYER
	call GetMapObject
	ld hl, MAPOBJECT_COLOR
	add hl, bc
	ln e, (1 << 3) | PAL_OW_PLAYER, PERSONTYPE_SCRIPT
	ld a, [wPlayerSpriteSetupFlags]
	bit 2, a
	jr nz, .ok
	;the pal for the player is dynamically loaded now, so we don't need this as the blue pal gets loaded int OB0 and what was originally the blue pal is now the follower pal

	;ld a, [wPlayerOverworldSprite]
	;bit 0, a
	;jr z, .ok
	;ln e, (1 << 3) | PAL_OW_FOLLOWER, PERSONTYPE_SCRIPT

.ok
	ld [hl], e
	xor a ; 0 for PLAYER
	ldh [hMapObjectIndexBuffer], a
	ld bc, wPlayerObject
	ldh [hObjectStructIndexBuffer], a
	ld de, wPlayerStruct
	call CopyMapObjectToObjectStruct
	ld a, PLAYER
	ld [wCenteredObject], a
	ret

PlayerObjectTemplate: ; 8071
; A dummy map object used to initialize the player object.
; Shorter than the actual amount copied by two bytes.
; Said bytes seem to be unused, but the game freezes when you first spawn
; in your room if this is not loaded.
	object_event -4, -4, SPRITE_PLAYER, SPRITEMOVEDATA_PLAYER, 15, 15, -1, -1, 0, PERSONTYPE_SCRIPT, 0, 0, -1

SpawnFollower::
	ld a, FOLLOWER
	ld hl, FollowerObjectTemplate
	call CopyPlayerObjectTemplate

	ld b, FOLLOWER
	call PlayerSpawn_ConvertCoords

	ld a, FOLLOWER
	call GetMapObject
	ld hl, MAPOBJECT_COLOR
	add hl, bc
	ln e, (1 << 3) | PAL_OW_FOLLOWER, PERSONTYPE_SCRIPT
	ld [hl], e
	ld a, FOLLOWER
	ldh [hMapObjectIndexBuffer], a
	ld bc, wFollowerObject
	ldh [hObjectStructIndexBuffer], a
	ld de, wFollowerStruct
	jp CopyMapObjectToObjectStruct

StartFollowerFollowing::
	ld a, PLAYER
	ld [wObjectFollow_Leader], a
	ld a, FOLLOWER
	ld [wObjectFollow_Follower], a
	jp QueueFollowerFirstStep

FollowerObjectTemplate:
	object_event -4, -4, SPRITE_FOLLOWER, SPRITEMOVEDATA_FOLLOWING, 15, 15, -1, -1, 0, PERSONTYPE_SCRIPT, 0, FollowerInteractScript, -1

CopyDECoordsToMapObject:: ; 807e
	push de
	ld a, b
	call GetMapObject
	pop de
	ld hl, MAPOBJECT_X_COORD
	add hl, bc
	ld [hl], d
	ld hl, MAPOBJECT_Y_COORD
	add hl, bc
	ld [hl], e
	ret

PlayerSpawn_ConvertCoords: ; 808f
	push bc
	ld a, [wXCoord]
	add 4
	ld d, a
	ld a, [wYCoord]
	add 4
	ld e, a
	pop bc
	jp CopyDECoordsToMapObject

WritePersonXY:: ; 80a1
	ld a, b
	call CheckObjectVisibility
	ret c

	ld hl, OBJECT_STANDING_X
	add hl, bc
	ld d, [hl]
	ld hl, OBJECT_STANDING_Y
	add hl, bc
	ld e, [hl]
	ldh a, [hMapObjectIndexBuffer]
	ld b, a
	call CopyDECoordsToMapObject
	and a
	ret

RefreshPlayerCoords: ; 80b8
	ld a, [wXCoord]
	add 4
	ld d, a
	ld hl, wPlayerStandingMapX
	sub [hl]
	ld [hl], d
	ld hl, wPlayerObjectXCoord
	ld [hl], d
	ld hl, wPlayerLastMapX
	ld [hl], d
	ld d, a
	ld a, [wYCoord]
	add 4
	ld e, a
	ld hl, wPlayerStandingMapY
	sub [hl]
	ld [hl], e
	ld hl, wMapObjects + MAPOBJECT_Y_COORD
	ld [hl], e
	ld hl, wPlayerLastMapY
	ld [hl], e
	ld e, a

; Follower
	ld a, [wObjectFollow_Leader]
	cp PLAYER
	ret nz ; no longer wtf
	ld a, [wObjectFollow_Follower]
	cp NO_FOLLOWER
	ret z

	call GetObjectStruct

	ld hl, OBJECT_STANDING_X
	add hl, bc
	ld a, [hl]
	add a, d
	ld [hl], a
	ld [wFollowerObjectXCoord], a

	ld hl, OBJECT_LAST_X
	add hl, bc
	ld a, [hl]
	add a, d
	ld [hl], a

	ld hl, OBJECT_STANDING_Y
	add hl, bc
	ld a, [hl]
	add a, e
	ld [hl], a
	ld [wFollowerObjectYCoord], a

	ld hl, OBJECT_LAST_Y
	add hl, bc
	ld a, [hl]
	add a, e
	ld [hl], a
	ret

CopyObjectStruct:: ; 80e7
	call CheckObjectMask
	and a
	ret nz ; masked
	ld hl, wObjectStructs + OBJECT_STRUCT_LENGTH * 1
	ld a, 1
	ld de, OBJECT_STRUCT_LENGTH
.loop
	ldh [hObjectStructIndexBuffer], a
	ld a, [hl]
	and a
	jr z, .done
	add hl, de
	ldh a, [hObjectStructIndexBuffer]
	inc a
	cp NUM_OBJECT_STRUCTS
	jr nz, .loop
	scf
	ret ; overflow

.done
	ld d, h
	ld e, l
	call CopyMapObjectToObjectStruct
	ld hl, wVramState
	bit 7, [hl]
	ret z

	ld hl, OBJECT_FLAGS2
	add hl, de
	set 5, [hl]
	ret

CopyMapObjectToObjectStruct: ; 8116
	ldh a, [hObjectStructIndexBuffer]
	ld hl, MAPOBJECT_OBJECT_STRUCT_ID
	add hl, bc
	ld [hl], a

	ldh a, [hMapObjectIndexBuffer]
	ld [wTempObjectCopyMapObjectIndex], a

	ld hl, MAPOBJECT_SPRITE
	add hl, bc
	ld a, [hl]
	ld [wTempObjectCopySprite], a

	call GetSpriteVTile
	ld [wTempObjectCopySpriteVTile], a

	ld a, [hl]
	call GetSpritePalette
	ld [wTempObjectCopyPalette], a

	ld hl, MAPOBJECT_COLOR
	add hl, bc
	ld a, [hl]
	and $f0
	jr z, .skip_color_override
	swap a
	and $7 ; OAM_PALETTE
	ld [wTempObjectCopyPalette], a

.skip_color_override
	ld hl, MAPOBJECT_MOVEMENT
	add hl, bc
	ld a, [hl]
	ld [wTempObjectCopyMovement], a

	ld hl, MAPOBJECT_RANGE
	add hl, bc
	ld a, [hl]
	ld [wTempObjectCopyRange], a

	ld hl, MAPOBJECT_X_COORD
	add hl, bc
	ld a, [hl]
	ld [wTempObjectCopyX], a

	ld hl, MAPOBJECT_Y_COORD
	add hl, bc
	ld a, [hl]
	ld [wTempObjectCopyY], a

	ld hl, MAPOBJECT_RADIUS
	add hl, bc
	ld a, [hl]
	ld [wTempObjectCopyRadius], a

	jp CopyTempObjectToObjectStruct

InitializeVisibleSprites: ; 8177
	ld bc, wMapObjects + OBJECT_LENGTH
	ld a, 1
.loop
	ldh [hMapObjectIndexBuffer], a
	ld hl, MAPOBJECT_SPRITE
	add hl, bc
	ld a, [hl]
	and a
	jr z, .next

	ld hl, MAPOBJECT_OBJECT_STRUCT_ID
	add hl, bc
	ld a, [hl]
	cp -1
	jr nz, .next

	ld a, [wXCoord]
	ld d, a
	ld a, [wYCoord]
	ld e, a

	ld hl, MAPOBJECT_X_COORD
	add hl, bc
	ld a, [hl]
	add 1
	sub d
	jr c, .next

	cp MAPOBJECT_SCREEN_WIDTH
	jr nc, .next

	ld hl, MAPOBJECT_Y_COORD
	add hl, bc
	ld a, [hl]
	add 1
	sub e
	jr c, .next

	cp MAPOBJECT_SCREEN_HEIGHT
	jr nc, .next

	push bc
	call CopyObjectStruct
	pop bc
	ret c

.next
	ld hl, OBJECT_LENGTH
	add hl, bc
	ld b, h
	ld c, l
	ldh a, [hMapObjectIndexBuffer]
	inc a
	cp NUM_OBJECTS
	jr nz, .loop
	ret

CheckObjectEnteringVisibleRange:: ; 81ca
	ld a, [wPlayerStepDirection]
	cp STANDING
	ret z
	ld hl, .dw
	rst JumpTable
	ret

.dw ; 81d6
	dw .Down
	dw .Up
	dw .Left
	dw .Right

.Up: ; 81de
	ld a, [wYCoord]
	sub 1
	jr .Vertical

.Down: ; 81e5
	ld a, [wYCoord]
	add 9
.Vertical: ; 81ea
	ld d, a
	ld a, [wXCoord]
	ld e, a
	ld bc, wMapObjects + OBJECT_LENGTH
	ld a, 1
.loop_v
	ldh [hMapObjectIndexBuffer], a
	ld hl, MAPOBJECT_SPRITE
	add hl, bc
	ld a, [hl]
	and a
	jr z, .next_v
	ld hl, MAPOBJECT_Y_COORD
	add hl, bc
	ld a, d
	cp [hl]
	jr nz, .next_v
	ld hl, MAPOBJECT_OBJECT_STRUCT_ID
	add hl, bc
	ld a, [hl]
	cp -1
	jr nz, .next_v
	ld hl, MAPOBJECT_X_COORD
	add hl, bc
	ld a, [hl]
	add 1
	sub e
	jr c, .next_v
	cp MAPOBJECT_SCREEN_WIDTH
	jr nc, .next_v
	push de
	push bc
	call CopyObjectStruct
	pop bc
	pop de

.next_v
	ld hl, OBJECT_LENGTH
	add hl, bc
	ld b, h
	ld c, l
	ldh a, [hMapObjectIndexBuffer]
	inc a
	cp NUM_OBJECTS
	jr nz, .loop_v
	ret

.Left: ; 8232
	ld a, [wXCoord]
	sub 1
	jr .Horizontal

.Right: ; 8239
	ld a, [wXCoord]
	add 10
.Horizontal: ; 823e
	ld e, a
	ld a, [wYCoord]
	ld d, a
	ld bc, wMapObjects + OBJECT_LENGTH
	ld a, 1
.loop_h
	ldh [hMapObjectIndexBuffer], a
	ld hl, MAPOBJECT_SPRITE
	add hl, bc
	ld a, [hl]
	and a
	jr z, .next_h
	ld hl, MAPOBJECT_X_COORD
	add hl, bc
	ld a, e
	cp [hl]
	jr nz, .next_h
	ld hl, MAPOBJECT_OBJECT_STRUCT_ID
	add hl, bc
	ld a, [hl]
	cp -1
	jr nz, .next_h
	ld hl, MAPOBJECT_Y_COORD
	add hl, bc
	ld a, [hl]
	add 1
	sub d
	jr c, .next_h
	cp MAPOBJECT_SCREEN_HEIGHT
	jr nc, .next_h
	push de
	push bc
	call CopyObjectStruct
	pop bc
	pop de

.next_h
	ld hl, OBJECT_LENGTH
	add hl, bc
	ld b, h
	ld c, l
	ldh a, [hMapObjectIndexBuffer]
	inc a
	cp NUM_OBJECTS
	jr nz, .loop_h
	ret

CopyTempObjectToObjectStruct: ; 8286
	ld a, [wTempObjectCopyMapObjectIndex]
	ld hl, OBJECT_MAP_OBJECT_INDEX
	add hl, de
	ld [hl], a

	ld a, [wTempObjectCopyMovement]
	call CopySpriteMovementData

	ld a, [wTempObjectCopyPalette]
	ld hl, OBJECT_PALETTE
	add hl, de
	or [hl]
	ld [hl], a

	ld a, [wTempObjectCopyY]
	call .InitYCoord

	ld a, [wTempObjectCopyX]
	call .InitXCoord

	ld a, [wTempObjectCopySprite]
	ld hl, OBJECT_SPRITE
	add hl, de
	ld [hl], a

	ld a, [wTempObjectCopySpriteVTile]
	ld hl, OBJECT_SPRITE_TILE
	add hl, de
	ld [hl], a

	ld hl, OBJECT_STEP_TYPE
	add hl, de
	ld [hl], STEP_TYPE_00

	ld hl, OBJECT_FACING
	add hl, de
	ld [hl], STANDING

	ld a, [wTempObjectCopyRadius]
	call .InitRadius

	ld a, [wTempObjectCopyRange]
	ld hl, OBJECT_RANGE
	add hl, de
	ld [hl], a

	and a
	ret

.InitYCoord: ; 82d5
	ld hl, OBJECT_INIT_Y
	add hl, de
	ld [hl], a

	ld hl, OBJECT_STANDING_Y
	add hl, de
	ld [hl], a

	ld hl, wYCoord
	sub [hl]
	and $f
	swap a
	ld hl, wPlayerBGMapOffsetY
	sub [hl]

	push de
	push af
	ld e, 0
	ld a, [wPlayerStairsType]
	and %1
	jr z, .player_not_on_stairs
	ld a, [wPlayerGoingUpStairs]
	and a
	jr z, .player_not_on_stairs
	dec a
	ld e, 8
	jr z, .goingdown
	ld e, -8
.goingdown
.player_not_on_stairs
	pop af
	sub e
	pop de

	ld hl, OBJECT_SPRITE_Y
	add hl, de
	ld [hl], a
	ret

.InitXCoord: ; 82f1
	ld hl, OBJECT_INIT_X
	add hl, de
	ld [hl], a
	ld hl, OBJECT_STANDING_X
	add hl, de
	ld [hl], a
	ld hl, wXCoord
	sub [hl]
	and $f
	swap a
	ld hl, wPlayerBGMapOffsetX
	sub [hl]
	ld hl, OBJECT_SPRITE_X
	add hl, de
	ld [hl], a
	ret

.InitRadius: ; 830d
	ld h, a
	inc a
	and $f
	ld l, a
	ld a, h
	add $10
	and $f0
	or l
	ld hl, OBJECT_RADIUS
	add hl, de
	ld [hl], a
	ret

TrainerWalkToPlayer: ; 831e
	ldh a, [hLastTalked]
	call InitMovementBuffer
	ld a, movement_step_sleep_1
	call AppendToMovementBuffer
	ldh a, [hLastTalked]
	ld b, a
	ld c, PLAYER
	ld d, 1
	call .GetPathToPlayer
	call DecrementMovementBufferCount
	ld a, movement_step_end
	jp AppendToMovementBuffer

.GetPathToPlayer: ; 8341
	push de
	push bc
; get player object struct, load to de
	ld a, c
	call GetMapObject
	ld hl, MAPOBJECT_OBJECT_STRUCT_ID
	add hl, bc
	ld a, [hl]
	call GetObjectStruct
	ld d, b
	ld e, c

; get last talked object struct, load to bc
	pop bc
	ld a, b
	call GetMapObject
	ld hl, MAPOBJECT_OBJECT_STRUCT_ID
	add hl, bc
	ld a, [hl]
	call GetObjectStruct

; get last talked coords, load to bc
	ld hl, OBJECT_STANDING_X
	add hl, bc
	ld a, [hl]
	ld hl, OBJECT_STANDING_Y
	add hl, bc
	ld c, [hl]
	ld b, a

; get player coords, load to de
	ld hl, OBJECT_STANDING_X
	add hl, de
	ld a, [hl]
	ld hl, OBJECT_STANDING_Y
	add hl, de
	ld e, [hl]
	ld d, a

	pop af
	jp ComputePathToWalkToPlayer

Special_SurfStartStep: ; 8379
	call InitMovementBuffer
	call .GetMovementData
	call AppendToMovementBuffer
	ld a, movement_step_end
	jp AppendToMovementBuffer

.GetMovementData: ; 8388
	ld a, [wPlayerDirection]
	srl a
	srl a
	and 3
	ld e, a
	ld d, 0
	ld hl, .movement_data
	add hl, de
	ld a, [hl]
	ret

.movement_data
	slow_step_down
	slow_step_up
	slow_step_left
	slow_step_right

FollowNotExact:: ; 839e
	push bc
	ld a, c
	call CheckObjectVisibility
	ld d, b
	ld e, c
	pop bc
	ret c

	ld a, b
	call CheckObjectVisibility
	ret c

; Person 2 is now in bc, person 1 is now in de
	ld hl, OBJECT_STANDING_X
	add hl, bc
	ld a, [hl]
	ld hl, OBJECT_STANDING_Y
	add hl, bc
	ld c, [hl]
	ld b, a

	ld hl, OBJECT_STANDING_X
	add hl, de
	ld a, [hl]
	cp b
	jr z, .same_x
	jr c, .to_the_left
	inc b
	jr .continue

.to_the_left
	dec b
	jr .continue

.same_x
	ld hl, OBJECT_STANDING_Y
	add hl, de
	ld a, [hl]
	cp c
	jr z, .continue
	jr c, .below
	inc c
	jr .continue

.below
	dec c

.continue
	ld hl, OBJECT_STANDING_X
	add hl, de
	ld [hl], b
	ld a, b
	ld hl, wXCoord
	sub [hl]
	and $f
	swap a
	ld hl, wPlayerBGMapOffsetX
	sub [hl]
	ld hl, OBJECT_SPRITE_X
	add hl, de
	ld [hl], a
	ld hl, OBJECT_STANDING_Y
	add hl, de
	ld [hl], c
	ld a, c
	ld hl, wYCoord
	sub [hl]
	and $f
	swap a
	ld hl, wPlayerBGMapOffsetY
	sub [hl]
	ld hl, OBJECT_SPRITE_Y
	add hl, de
	ld [hl], a
	ldh a, [hObjectStructIndexBuffer]
	ld hl, OBJECT_RANGE
	add hl, de
	ld [hl], a
	ld hl, OBJECT_MOVEMENT_TYPE
	add hl, de
	ld [hl], SPRITEMOVEDATA_FOLLOWNOTEXACT
	ld hl, OBJECT_STEP_TYPE
	add hl, de
	ld [hl], STEP_TYPE_00
	ret

GetRelativeFacing:: ; 8417
; Determines which way map object e would have to turn to face map object d.  Returns carry if it's impossible for whatever reason.
	ld a, d
	call GetMapObject
	ld hl, MAPOBJECT_OBJECT_STRUCT_ID
	add hl, bc
	ld a, [hl]
	cp NUM_OBJECT_STRUCTS
	jr nc, .carry
	ld d, a
	ld a, e
	call GetMapObject
	ld hl, MAPOBJECT_OBJECT_STRUCT_ID
	add hl, bc
	ld a, [hl]
	cp NUM_OBJECT_STRUCTS
	jr nc, .carry
	ld e, a
	jp .GetFacing_e_relativeto_d

.carry
	scf
	ret

.GetFacing_e_relativeto_d: ; 8439
; Determines which way object e would have to turn to face object d.  Returns carry if it's impossible.
; load the coordinates of object d into bc
	ld a, d
	call GetObjectStruct
	ld hl, OBJECT_STANDING_X
	add hl, bc
	ld a, [hl]
	ld hl, OBJECT_STANDING_Y
	add hl, bc
	ld c, [hl]
	ld b, a
	push bc
; load the coordinates of object e into de
	ld a, e
	call GetObjectStruct
	ld hl, OBJECT_STANDING_X
	add hl, bc
	ld d, [hl]
	ld hl, OBJECT_STANDING_Y
	add hl, bc
	ld e, [hl]
	pop bc
; |x1 - x2|
	ld a, b
	sub d
	jr z, .same_x_1
	jr nc, .b_right_of_d_1
	cpl
	inc a

.b_right_of_d_1
; |y1 - y2|
	ld h, a
	ld a, c
	sub e
	jr z, .same_y_1
	jr nc, .c_below_e_1
	cpl
	inc a

.c_below_e_1
; |y1 - y2| - |x1 - x2|
	sub h
	jr c, .same_y_1

.same_x_1
; compare the y coordinates
	ld a, c
	cp e
	jr z, .same_x_and_y
	jr c, .c_directly_below_e
; c directly above e
	ld d, DOWN
	and a
	ret

.c_directly_below_e
	ld d, UP
	and a
	ret

.same_y_1
	ld a, b
	cp d
	jr z, .same_x_and_y
	jr c, .b_directly_right_of_d
; b directly left of d
	ld d, RIGHT
	and a
	ret

.b_directly_right_of_d
	ld d, LEFT
	and a
	ret

.same_x_and_y
	scf
	ret

QueueFollowerFirstStep: ; 848a
	call .QueueFirstStep
	jr c, .same
	ld [wFollowMovementQueue], a
	xor a
	ld [wFollowerMovementQueueLength], a
	ret

.same
	ld a, -1
	ld [wFollowerMovementQueueLength], a
	ret

.QueueFirstStep:
	ld a, [wObjectFollow_Leader]
	call GetObjectStruct
	ld hl, OBJECT_STANDING_X
	add hl, bc
	ld d, [hl]
	ld hl, OBJECT_STANDING_Y
	add hl, bc
	ld e, [hl]
	ld a, [wObjectFollow_Follower]
	call GetObjectStruct
	ld hl, OBJECT_STANDING_X
	add hl, bc
	ld a, d
	cp [hl]
	jr z, .check_y
	jr c, .left
	and a
	ld a, movement_step_right
	ret

.left
	and a
	ld a, movement_step_left
	ret

.check_y
	ld hl, OBJECT_STANDING_Y
	add hl, bc
	ld a, e
	cp [hl]
	jr z, .same_xy
	jr c, .up
	and a
	ld a, movement_step_down
	ret

.up
	and a
	ld a, movement_step_up
	ret

.same_xy
	scf
	ret

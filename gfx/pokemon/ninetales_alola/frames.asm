	dw .frame1
	dw .frame2
	dw .frame3
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $04, $34, $35, $36, $37, $38, $39, $3a, $3b
	db $3c, $3d, $3e, $3f, $40, $41, $42
.frame2
	db $01 ; bitmask
	db $04, $34, $38, $39, $3a, $3d, $3e, $3f
.frame3
	db $02 ; bitmask
	db $31, $32, $33, $35, $36, $37, $43, $3b, $44, $45, $46, $47
	db $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53
	db $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f
	db $60

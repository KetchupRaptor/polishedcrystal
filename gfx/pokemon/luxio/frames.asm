	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $00, $34, $35, $36, $37, $38, $39, $3a, $3b
	db $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $00
	db $00, $00, $00
.frame2
	db $00 ; bitmask
	db $31, $32, $33, $00, $34, $35, $36, $37, $38, $39, $3a, $3b
	db $3c, $3d, $47, $48, $40, $41, $42, $49, $4a, $45, $46, $00
	db $00, $00, $00
.frame3
	db $01 ; bitmask
	db $31, $32, $33, $00, $34, $4b, $4c, $4d, $4e, $4f, $38, $39
	db $50, $51, $52, $53, $3b, $54, $3d, $55, $56, $57, $41, $42
	db $58, $59, $45, $46, $5a, $5b, $5c, $00
.frame4
	db $02 ; bitmask
	db $31, $32, $33, $00, $34, $4b, $4c, $4d, $37, $38, $39, $50
	db $51, $3b, $54, $3d, $47, $48, $40, $41, $42, $49, $4a, $45
	db $46, $00, $00, $00, $00
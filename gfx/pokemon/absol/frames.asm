	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $01
	db $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45
.frame2
	db $01 ; bitmask
	db $46, $47, $48, $49, $34, $4a, $4b, $4c, $4d, $4e, $3a, $3b
	db $4f, $50, $51, $52, $53, $54, $41, $55, $56, $57, $58
.frame3
	db $01 ; bitmask
	db $46, $59, $5a, $49, $34, $4a, $4b, $5b, $5c, $5d, $3a, $3b
	db $4f, $50, $51, $5e, $5f, $60, $41, $55, $61, $62, $63
.frame4
	db $01 ; bitmask
	db $46, $64, $65, $66, $34, $4a, $4b, $67, $68, $69, $6a, $3b
	db $4f, $50, $51, $6b, $6c, $6d, $41, $55, $6e, $6f, $70
.frame5
	db $02 ; bitmask
	db $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c
	db $7d, $7e, $7f, $80, $81, $82, $83
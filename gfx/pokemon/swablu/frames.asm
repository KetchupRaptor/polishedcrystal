	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
.frame1
	db $00 ; bitmask
	db $31, $32, $33
.frame2
	db $00 ; bitmask
	db $31, $34, $35
.frame3
	db $01 ; bitmask
	db $25, $36, $37, $00, $38, $39, $3a, $00, $3b, $3c, $34, $3d
	db $3e, $3f, $40, $41, $42, $43, $44, $00, $45, $46, $47, $48
	db $49
.frame4
	db $02 ; bitmask
	db $00, $4a, $4b, $4c, $00, $4d, $4e, $4f, $50, $00, $51, $3c
	db $34, $52, $3e, $53, $54, $55, $56, $57, $58, $00, $59, $5a
	db $5b, $00, $5c, $5d
.frame5
	db $03 ; bitmask
	db $00, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68
	db $69, $6a, $6b, $6c, $00, $6d, $6e, $00, $00
.frame6
	db $04 ; bitmask
	db $00, $6f, $70, $00, $71, $72, $73, $74, $75, $76, $77, $78
	db $79, $7a, $7b, $7c, $00, $7d, $7e, $00, $00, $00

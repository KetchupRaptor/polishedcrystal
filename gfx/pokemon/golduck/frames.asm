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
	db $01 ; bitmask
	db $34, $35, $00, $00, $36, $37, $38, $00, $00, $31, $32, $39
	db $3a
.frame3
	db $02 ; bitmask
	db $34, $35, $00, $00, $36, $37, $38, $00, $00, $31, $32, $3b
	db $3c, $3d, $3e, $3f, $40, $41, $42, $43, $00, $44, $45, $00
	db $46
.frame4
	db $03 ; bitmask
	db $34, $35, $00, $00, $36, $37, $38, $00, $00, $31, $32, $39
	db $3a, $47, $48, $49, $4a, $4b
.frame5
	db $04 ; bitmask
	db $34, $35, $00, $00, $36, $4c, $4d, $00, $00, $4e, $4f, $3a
.frame6
	db $05 ; bitmask
	db $50, $51, $52, $53

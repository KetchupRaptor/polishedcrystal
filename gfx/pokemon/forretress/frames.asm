	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37
.frame2
	db $01 ; bitmask
	db $38, $39, $3a, $3b, $3c, $00, $3d, $3e
.frame3
	db $02 ; bitmask
	db $38, $39, $3f, $40, $41, $42, $3b, $3c, $00, $3d, $3e
.frame4
	db $03 ; bitmask
	db $38, $39, $43, $44, $45, $46, $47, $3b, $3c, $00, $3d, $3e
.frame5
	db $04 ; bitmask
	db $3f, $40, $41, $48

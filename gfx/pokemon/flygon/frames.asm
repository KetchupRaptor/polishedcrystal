	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
	dw .frame8
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c
	db $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48
.frame2
	db $01 ; bitmask
	db $49, $4a, $03, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53
	db $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f
	db $60, $61, $62, $03, $63, $64, $65, $66, $67, $68, $69, $6a
	db $6b, $6c, $03, $6d, $6e
.frame3
	db $02 ; bitmask
	db $6f, $70, $71, $72, $73, $74, $54, $75, $76, $57, $58, $77
	db $5a, $78, $79, $5d, $7a, $7b, $7c, $7d, $7e, $63, $7f, $80
	db $81, $82, $6a, $83, $84, $85, $86
.frame4
	db $01 ; bitmask
	db $49, $4a, $03, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53
	db $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f
	db $60, $61, $62, $03, $63, $64, $65, $66, $67, $68, $69, $6a
	db $6b, $6c, $03, $6d, $6e
.frame5
	db $03 ; bitmask
	db $87, $32, $73, $74, $54, $75, $88, $57, $58, $77, $5a, $89
	db $3a, $5d, $7a, $7b, $8a, $3f, $63, $7f, $41, $42, $43, $6a
	db $83, $46, $47, $48
.frame6
	db $01 ; bitmask
	db $49, $4a, $03, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53
	db $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f
	db $60, $61, $62, $03, $63, $64, $65, $66, $67, $68, $69, $6a
	db $6b, $6c, $03, $6d, $6e
.frame7
	db $04 ; bitmask
	db $6f, $70, $8b, $72, $33, $54, $34, $8c, $36, $37, $38, $8d
	db $79, $3b, $3c, $3d, $7c, $8e, $7e, $40, $80, $81, $82, $44
	db $45, $84, $85, $86
.frame8
	db $05 ; bitmask
	db $8f

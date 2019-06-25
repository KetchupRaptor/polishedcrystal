_AddNTimes:: ; 0x30fe
; Add bc * a to hl. Don't optimize this for space.
	and a
	ret z

	push bc
.loop
	rra ; and a from below and above resets carry
	jr nc, .noadd
	add hl, bc
.noadd
	sla c
	rl b
	and a
	jr nz, .loop
	pop bc
	ret

SimpleMultiply:: ; 3105
; Return a * c.
	and a
	ret z

	push bc
	ld b, a
	xor a
.loop
	add c
	dec b
	jr nz, .loop
	pop bc
	ret
; 3110


SimpleDivide::
; Divide a by c. Return quotient b and remainder a.
	inc c
	dec c
	jr z, .div0
	ld b, 0
	and a
	ret z
.loop
	inc b
	sub c
	jr nc, .loop
	ret z
	add c
	dec b
	ret
.div0
	rst 0 ; crash


Multiply:: ; 3119
; Multiply hMultiplicand (3 bytes) by hMultiplier. Result in hProduct.
; All values are big endian.
	push hl
	push bc
	push de

	farcall _Multiply

	pop de
	pop bc
	pop hl
	ret
; 3124


Divide:: ; 3124
; Divide hDividend length b (max 4 bytes) by hDivisor. Result in hQuotient.
; All values are big endian.
	push hl
	push de
	push bc

	homecall _Divide

	pop bc
	pop de
	pop hl
	ret
; 3136

CompareTwoBytes::
; Returns f
;  z - bc == de
; nz = bc != de
;  c - bc <  de
; nc - bc >= de
	push hl
	xor a
	ld l, a
	ld a, b
	cp d
	jr nz, .not_equal
	ld a, c
	cp e
	jr nz, .not_equal
	set 7, l

.not_equal
	ld a, b
	cp d
	jr c, .less_than
	jr nz, .greater_than
	ld a, c
	cp e
	jr c, .less_than

.greater_than
	ld a, h
	pop hl
	ret

.less_than
	set 4, l
	push hl
	pop af
	pop hl
	ret

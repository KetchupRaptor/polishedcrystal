
	dw 00473 ;national dex no

	db 110, 130,  80,  80,  70,  60
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, GROUND ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/mamoswine/front.dimensions"
	db OBLIVIOUS, SNOW_CLOAK     ; abilities
	db THICK_FAT    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end

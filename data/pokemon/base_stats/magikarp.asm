
	dw 00129 ;national dex no

	db  20,  10,  55,  80,  15,  20
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 1 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/magikarp/front.dimensions"
	db SWIFT_SWIM, SWIFT_SWIM     ; abilities
	db RATTLED    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_DRAGON ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end

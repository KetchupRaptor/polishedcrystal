
	dw 00247 ;national dex no

	db  70,  84,  70,  51,  65,  70
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 8 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/pupitar/front.dimensions"
	db SHED_SKIN, SHED_SKIN     ; abilities
	db SHED_SKIN    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end

	dw undefined ;national dex no
	
	db  69,  90,  60, 121,  90,  60
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ELECTRIC, ELECTRIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/boltund/front.dimensions"  
	db STRONG JAW, STRONG JAW     ; abilities
	db COMPETITIVE    ; hidden ability
	db Fast ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
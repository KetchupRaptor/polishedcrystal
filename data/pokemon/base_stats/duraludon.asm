	dw undefined ;national dex no
	
	db  70,  95, 115,  85, 120,  50
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf
	
	db STEEL, DRAGON ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/duraludon/front.dimensions"  
	db LIGHT METAL, HEAVY METAL     ; abilities
	db STALWART    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_MINERAL, EGG_DRAGON ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
	dw undefined ;national dex no
	
	db  50,  65,  50,  65,  40,  40
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GRASS, GRASS ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/grookey/front.dimensions"  
	db OVERGROW, OVERGROW     ; abilities
	db GRASSY SURGE    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_FIELD, EGG_GRASS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
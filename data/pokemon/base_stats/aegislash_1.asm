	dw undefined ;national dex no
	
	db  60, 140,  50,  60, 140,  50
	evs  0,   2,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf
	
	db STEEL, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/aegislash_1/front.dimensions"  
	db STANCE CHANGE, STANCE CHANGE     ; abilities
	db STANCE CHANGE    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
	dw undefined ;national dex no
	
	db  57,  90,  95,  29, 136, 103
	evs  0,   0,   0,   0,   3,   0
	;   hp  atk  def  spd  sat  sdf
	
	db PSYCHIC, FAIRY ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/hatterene/front.dimensions"  
	db HEALER, ANTICIPATION     ; abilities
	db MAGIC BOUNCE    ; hidden ability
	db Slow ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
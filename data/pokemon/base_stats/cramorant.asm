	dw undefined ;national dex no
	
	db  70,  85,  55,  85,  85,  95
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf
	
	db FLYING, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/cramorant/front.dimensions"  
	db GULP MISSILE, GULP MISSILE     ; abilities
	db GULP MISSILE    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_WATER_1, EGG_FLYING ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
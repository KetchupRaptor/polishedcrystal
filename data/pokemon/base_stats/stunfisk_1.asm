	dw undefined ;national dex no
	
	db 109,  81,  99,  32,  66,  84
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GROUND, STEEL ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/stunfisk_1/front.dimensions"  
	db MIMICRY, MIMICRY     ; abilities
	db MIMICRY    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_WATER_1, EGG_AMORPHOUS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
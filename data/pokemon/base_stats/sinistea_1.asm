
	dw 01155 ;national dex no

	db  40,  45,  45,  50,  74,  54
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/sinistea_1/front.dimensions"
	db WEAK_ARMOR, WEAK_ARMOR     ; abilities
	db CURSED_BODY    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_AMORPHOUS ; egg groups

	; tm/hm learnset
	tmhm
	; end
	dw 00298
	db  50,  20,  40,  20,  20,  40
    evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, FLYING ; type
	db 150 ; catch rate
	db 38 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_75, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/azurill/front.dimensions"
	db THICK_FAT, HUGE_POWER	; abilities
	db SAP_SIPPER	; hidden ability
	db GROWTH_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm
	; end

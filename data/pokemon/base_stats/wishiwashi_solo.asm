
    dw 00746 ;national dex no

    db  45,  20,  20,  40,  25,  25
    evs  1,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, WATER ; type
    db 60 ; catch rate
    db 61 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/wishiwashi_solo/front.dimensions"
    db SCHOOLING, SCHOOLING     ; abilities
    db SCHOOLING    ; hidden ability
    db GROWTH_FAST ; growth rate
    dn EGG_WATER_2 ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end


    dw 00071 ;national dex no

    db  80, 105,  65,  70, 100,  70
    evs  0,   3,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GRASS, POISON ; type
    db 45 ; catch rate
    db 221 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/victreebel/front.dimensions"
    db CHLOROPHYLL, CHLOROPHYLL     ; abilities
    db GLUTTONY    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_GRASS ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end

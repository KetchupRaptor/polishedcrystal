
    dw 00707 ;national dex no

    db  57,  80,  91,  75,  80,  87
    evs  0,   0,   1,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db STEEL, FAIRY ; type
    db 75 ; catch rate
    db 165 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/klefki/front.dimensions"
    db PRANKSTER, PRANKSTER     ; abilities
    db MAGICIAN    ; hidden ability
    db GROWTH_FAST ; growth rate
    dn EGG_MINERAL ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end


    dw 00513 ;national dex no

    db  50,  53,  48,  64,  53,  48
    evs  0,   0,   0,   1,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db FIRE, FIRE ; type
    db 190 ; catch rate
    db 63 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_12_5, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/pansear/front.dimensions"
    db GLUTTONY, GLUTTONY     ; abilities
    db BLAZE    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end

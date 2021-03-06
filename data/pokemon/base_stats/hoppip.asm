
    dw 00187 ;national dex no

    db  35,  35,  40,  50,  35,  55
    evs  0,   0,   0,   0,   0,   1
    ;   hp  atk  def  spd  sat  sdf

    db GRASS, FLYING ; type
    db 255 ; catch rate
    db 50 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/hoppip/front.dimensions"
    db CHLOROPHYLL, LEAF_GUARD     ; abilities
    db INFILTRATOR    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FAIRY, EGG_GRASS ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end


    dw 00662 ;national dex no

    db  62,  73,  55,  84,  56,  52
    evs  0,   0,   0,   2,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db FIRE, FLYING ; type
    db 120 ; catch rate
    db 134 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/fletchinder/front.dimensions"
    db FLAME_BODY, FLAME_BODY     ; abilities
    db GALE_WINGS    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FLYING ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end

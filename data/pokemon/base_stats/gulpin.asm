
    dw 00316 ;national dex no

    db  70,  43,  53,  40,  43,  53
    evs  1,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db POISON, POISON ; type
    db 225 ; catch rate
    db 60 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/gulpin/front.dimensions"
    db LIQUID_OOZE, STICKY_HOLD     ; abilities
    db GLUTTONY    ; hidden ability
    db GROWTH_FLUCTUATING ; growth rate
    dn EGG_AMORPHOUS ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end

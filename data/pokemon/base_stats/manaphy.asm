
    dw 00490 ;national dex no

    db 100, 100, 100, 100, 100, 100
    evs  3,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, WATER ; type
    db 3 ; catch rate
    db 255 ; base exp
	dw 0 ; field capabilities
    dn GENDERLESS, 2 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/manaphy/front.dimensions"
    db HYDRATION, HYDRATION     ; abilities
    db HYDRATION    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_WATER_1, EGG_FAIRY ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end

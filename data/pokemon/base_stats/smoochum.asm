
    dw 00238 ;national dex no

    db  45,  30,  15,  65,  85,  65
    evs  0,   0,   0,   0,   1,   0
    ;   hp  atk  def  spd  sat  sdf

    db ICE, PSYCHIC ; type
    db 45 ; catch rate
    db 61 ; base exp
	dw 0 ; field capabilities
    dn ALL_FEMALE, 5 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/smoochum/front.dimensions"
    db OBLIVIOUS, FOREWARN     ; abilities
    db HYDRATION    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_NONE ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end

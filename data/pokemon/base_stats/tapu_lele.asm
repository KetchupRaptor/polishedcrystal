
    dw 00786 ;national dex no

    db  70,  85,  75,  95, 130, 115
    evs  0,   0,   0,   0,   3,   0
    ;   hp  atk  def  spd  sat  sdf

    db PSYCHIC, FAIRY ; type
    db 3 ; catch rate
    db 255 ; base exp
	dw 0 ; field capabilities
    dn GENDERLESS, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/tapu_lele/front.dimensions"
    db PSYCHIC_SURGE, PSYCHIC_SURGE     ; abilities
    db TELEPATHY    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_NONE ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end

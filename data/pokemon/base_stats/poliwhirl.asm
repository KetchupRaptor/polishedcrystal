
    dw 00061 ;national dex no

    db  65,  65,  65,  90,  50,  50
    evs  0,   0,   0,   2,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, WATER ; type
    db 120 ; catch rate
    db 135 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/poliwhirl/front.dimensions"
    db WATER_ABSORB, DAMP     ; abilities
    db SWIFT_SWIM    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_WATER_1 ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end

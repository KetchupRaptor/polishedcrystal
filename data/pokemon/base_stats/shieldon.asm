
    dw 00410 ;national dex no

    db  30,  42, 118,  30,  42,  88
    evs  0,   0,   1,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db ROCK, STEEL ; type
    db 45 ; catch rate
    db 70 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_12_5, 6 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/shieldon/front.dimensions"
    db STURDY, STURDY     ; abilities
    db SOUNDPROOF    ; hidden ability
    db GROWTH_ERRATIC ; growth rate
    dn EGG_MONSTER ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end

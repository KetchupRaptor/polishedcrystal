
    dw 00065 ;national dex no

    db  55,  50,  45, 120, 135,  95
    evs  0,   0,   0,   0,   3,   0
    ;   hp  atk  def  spd  sat  sdf

    db PSYCHIC, PSYCHIC ; type
    db 50 ; catch rate
    db 225 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_25, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/alakazam/front.dimensions"
    db SYNCHRONIZE, INNER_FOCUS     ; abilities
    db MAGIC_GUARD    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_HUMAN_LIKE ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end

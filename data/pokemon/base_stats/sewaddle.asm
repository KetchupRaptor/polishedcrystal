
    dw 00540 ;national dex no

    db  45,  53,  70,  42,  40,  60
    evs  0,   0,   1,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db BUG, GRASS ; type
    db 255 ; catch rate
    db 62 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/sewaddle/front.dimensions"
    db SWARM, CHLOROPHYLL     ; abilities
    db OVERCOAT    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_BUG ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end

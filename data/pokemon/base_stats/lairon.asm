
    dw 00305 ;national dex no

    db  60,  90, 140,  40,  50,  50
    evs  0,   0,   2,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db STEEL, ROCK ; type
    db 90 ; catch rate
    db 151 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 7 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/lairon/front.dimensions"
    db STURDY, ROCK_HEAD     ; abilities
    db HEAVY_METAL    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_MONSTER ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end

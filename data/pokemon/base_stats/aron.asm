
    dw 00304 ;national dex no

    db  50,  70, 100,  30,  40,  40
    evs  0,   0,   1,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db STEEL, ROCK ; type
    db 180 ; catch rate
    db 66 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 7 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/aron/front.dimensions"
    db STURDY, ROCK_HEAD     ; abilities
    db HEAVY_METAL    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_MONSTER ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end

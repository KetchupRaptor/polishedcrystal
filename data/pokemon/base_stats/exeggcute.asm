
    dw 00102 ;national dex no

    db  60,  40,  80,  40,  60,  45
    evs  0,   0,   1,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GRASS, PSYCHIC ; type
    db 90 ; catch rate
    db 65 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/exeggcute/front.dimensions"
    db CHLOROPHYLL, CHLOROPHYLL     ; abilities
    db HARVEST    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_GRASS ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end

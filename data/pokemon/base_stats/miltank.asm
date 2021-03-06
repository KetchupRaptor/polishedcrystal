
    dw 00241 ;national dex no

    db  95,  80, 105, 100,  40,  70
    evs  0,   0,   2,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, NORMAL ; type
    db 45 ; catch rate
    db 172 ; base exp
	dw 0 ; field capabilities
    dn ALL_FEMALE, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/miltank/front.dimensions"
    db THICK_FAT, SCRAPPY     ; abilities
    db SAP_SIPPER    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end

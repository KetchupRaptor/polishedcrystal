
    dw 00398 ;national dex no

    db  85, 120,  70, 100,  50,  60
    evs  0,   3,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, FLYING ; type
    db 45 ; catch rate
    db 218 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/staraptor/front.dimensions"
    db INTIMIDATE, INTIMIDATE     ; abilities
    db RECKLESS    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FLYING ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end

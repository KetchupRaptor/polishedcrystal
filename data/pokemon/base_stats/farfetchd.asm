
    dw 00083 ;national dex no

    db  52,  90,  55,  60,  58,  62
    evs  0,   1,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, FLYING ; type
    db 45 ; catch rate
    db 132 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/farfetchd/front.dimensions"
    db KEEN_EYE, INNER_FOCUS     ; abilities
    db DEFIANT    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FLYING, EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end

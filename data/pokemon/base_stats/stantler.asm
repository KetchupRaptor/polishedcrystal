
    dw 00234 ;national dex no

    db  73,  95,  62,  85,  85,  65
    evs  0,   1,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, NORMAL ; type
    db 45 ; catch rate
    db 163 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/stantler/front.dimensions"
    db INTIMIDATE, FRISK     ; abilities
    db SAP_SIPPER    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end


    dw 00289 ;national dex no

    db 150, 160, 100, 100,  95,  65
    evs  3,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, NORMAL ; type
    db 45 ; catch rate
    db 252 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/slaking/front.dimensions"
    db TRUANT, TRUANT     ; abilities
    db TRUANT    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end

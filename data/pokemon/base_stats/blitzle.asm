
    dw 00522 ;national dex no

    db  45,  60,  32,  76,  50,  32
    evs  0,   0,   0,   1,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db ELECTRIC, ELECTRIC ; type
    db 190 ; catch rate
    db 59 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/blitzle/front.dimensions"
    db LIGHTNING_ROD, MOTOR_DRIVE     ; abilities
    db SAP_SIPPER    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end

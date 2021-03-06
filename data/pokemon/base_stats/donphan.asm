
    dw 00232 ;national dex no

    db  90, 120, 120,  50,  60,  60
    evs  0,   1,   1,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GROUND, GROUND ; type
    db 60 ; catch rate
    db 175 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/donphan/front.dimensions"
    db STURDY, STURDY     ; abilities
    db SAND_VEIL    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end

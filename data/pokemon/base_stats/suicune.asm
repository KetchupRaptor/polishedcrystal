	dw 00245 ;national dex no

        db 100,  75, 115,  85,  90, 115
        evs  0,   0,   1,   0,   0,   2
        ;   hp  atk  def  spd  sat  sdf

        db WATER, WATER ; type
        db 3 ; catch rate
        db 261 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 16 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/suicune/front.dimensions"
        db PRESSURE, PRESSURE     ; abilities
        db INNER_FOCUS    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE ; egg groups

        ; tm/hm learnset
        tmhm
        ; end

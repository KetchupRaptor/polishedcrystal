	dw 00487 ;national dex no

        db 150, 100, 120,  90, 100, 120
        evs  3,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db GHOST, DRAGON ; type
        db 3 ; catch rate
        db 255 ; base exp
        dw 0 ; field capabilities

        INCBIN "gfx/pokemon/giratina/front.dimensions"
        db PRESSURE, PRESSURE     ; abilities
        db TELEPATHY    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE, EGG_NONE ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
        
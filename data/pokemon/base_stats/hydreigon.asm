	dw 00635 ;national dex no

        db  92, 105,  90,  98, 125,  90
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf

        db DARK, DRAGON ; type
        db 45 ; catch rate
        db 270 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 8 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/hydreigon/front.dimensions"
        db LEVITATE, LEVITATE     ; abilities
        db LEVITATE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_DRAGON ; egg groups

        ; tm/hm learnset
        tmhm
        ; end

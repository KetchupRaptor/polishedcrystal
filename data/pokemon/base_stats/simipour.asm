	dw 00516 ;national dex no

        db  75,  98,  63, 101,  98,  63
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db WATER, WATER ; type
        db 75 ; catch rate
        db 174 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/simipour/front.dimensions"
        db GLUTTONY, GLUTTONY     ; abilities
        db TORRENT    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end

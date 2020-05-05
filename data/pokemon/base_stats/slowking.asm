	dw 00199 ;national dex no

        db  95,  75,  80,  30, 100, 110
        evs  0,   0,   0,   0,   0,   3
        ;   hp  atk  def  spd  sat  sdf

        db WATER, PSYCHIC ; type
        db 70 ; catch rate
        db 172 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/slowking/front.dimensions"
        db OBLIVIOUS, OWN_TEMPO     ; abilities
        db REGENERATOR    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MONSTER, EGG_WATER_1 ; egg groups

        ; tm/hm learnset
        tmhm
        ; end

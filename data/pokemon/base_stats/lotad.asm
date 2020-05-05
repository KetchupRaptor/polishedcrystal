	dw 00270 ;national dex no

        db  40,  30,  30,  30,  40,  50
        evs  0,   0,   0,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf

        db WATER, GRASS ; type
        db 255 ; catch rate
        db 44 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/lotad/front.dimensions"
        db SWIFT_SWIM, RAIN_DISH     ; abilities
        db OWN_TEMPO    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_WATER_1, EGG_GRASS ; egg groups

        ; tm/hm learnset
        tmhm
        ; end

	dw 00510 ;national dex no

        db  64,  88,  50, 106,  88,  50
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db DARK, DARK ; type
        db 90 ; catch rate
        db 156 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/liepard/front.dimensions"
        db LIMBER, UNBURDEN     ; abilities
        db PRANKSTER    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end

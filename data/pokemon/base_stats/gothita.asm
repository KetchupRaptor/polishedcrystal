	dw 00574 ;national dex no

        db  45,  30,  50,  45,  55,  65
        evs  0,   0,   0,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf

        db PSYCHIC, PSYCHIC ; type
        db 200 ; catch rate
        db 58 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_75, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/gothita/front.dimensions"
        db FRISK, COMPETITIVE     ; abilities
        db SHADOW_TAG    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_HUMAN_LIKE ; egg groups

        ; tm/hm learnset
        tmhm
        ; end

	dw 00undefined ;national dex no
        
        db  70,  55,  95,  65,  95, 110
        evs  0,   0,   0,   0,   0,   3
        ;   hp  atk  def  spd  sat  sdf
        
        db PSYCHIC, PSYCHIC ; type
        db 50 ; catch rate
        db 221 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_75, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/gothitelle/front.dimensions"  
        db FRISK, COMPETITIVE     ; abilities
        db SHADOW_TAG    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_HUMAN_LIKE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end
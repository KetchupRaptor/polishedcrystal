	dw 000undefined ;national dex no
        
        db  83,  80,  75, 101,  70,  70
        evs  0,   0,   0,   3,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, FLYING ; type
        db 45 ; catch rate
        db 216 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/pidgeot/front.dimensions"  
        db KEEN_EYE, TANGLED_FEET     ; abilities
        db BIG_PECKS    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FLYING ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end
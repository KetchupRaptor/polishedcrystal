	dw 00undefined ;national dex no
        
        db  80,  52,  50,  89,  90,  50
        evs  1,   0,   0,   1,   1,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, FLYING ; type
        db 45 ; catch rate
        db 185 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/vivillon/front.dimensions"  
        db SHIELD_DUST, COMPOUND_EYES     ; abilities
        db FRIEND_GUARD    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end
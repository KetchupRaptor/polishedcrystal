	dw 00undefined ;national dex no
        
        db  40,  45,  40,  84,  55,  40
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, FAIRY ; type
        db 190 ; catch rate
        db 61 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/cutiefly/front.dimensions"  
        db HONEY_GATHER, SHIELD_DUST     ; abilities
        db SWEET_VEIL    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_BUG, EGG_FAIRY ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end
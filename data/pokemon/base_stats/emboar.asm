	dw 00500 ;national dex no
        
        db 110, 123,  65,  65, 100,  65
        evs  0,   3,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FIRE, FIGHTING ; type
        db 45 ; catch rate
        db 238 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/emboar/front.dimensions"  
        db BLAZE, BLAZE     ; abilities
        db RECKLESS    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FIELD, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end
	dw 00511 ;national dex no
        
        db  50,  53,  48,  64,  53,  48
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, GRASS ; type
        db 190 ; catch rate
        db 63 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/pansage/front.dimensions"  
        db GLUTTONY, GLUTTONY     ; abilities
        db OVERGROW    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end
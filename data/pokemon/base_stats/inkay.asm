	dw 00undefined ;national dex no
        
        db  53,  54,  53,  45,  37,  46
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db DARK, PSYCHIC ; type
        db 190 ; catch rate
        db 58 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/inkay/front.dimensions"  
        db CONTRARY, SUCTION_CUPS     ; abilities
        db INFILTRATOR    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_1, EGG_WATER_2 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end
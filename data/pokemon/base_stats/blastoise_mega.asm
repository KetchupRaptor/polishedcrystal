        dw 00009 ;national dex no
        
        db  79, 103, 120,  78, 135, 115
        evs  0,   0,   0,   0,   0,   3
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, WATER ; type
        db 45 ; catch rate
        db 239 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/blastoise/front.dimensions"  
        db MEGA_LAUNCHER, MEGA_LAUNCHER     ; abilities
        db MEGA_LAUNCHER    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_MONSTER, EGG_WATER_1 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end

	dw 00271 ;national dex no
        
        db  60,  50,  50,  50,  60,  70
        evs  0,   0,   0,   0,   0,   2
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, GRASS ; type
        db 120 ; catch rate
        db 119 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/lombre/front.dimensions"  
        db SWIFT_SWIM, RAIN_DISH     ; abilities
        db OWN_TEMPO    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_WATER_1, EGG_GRASS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end
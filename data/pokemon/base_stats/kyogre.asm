	dw 00undefined ;national dex no
        
        db 100, 100,  90,  90, 150, 140
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, WATER ; type
        db 3 ; catch rate
        db 302 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 24 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/kyogre/front.dimensions"  
        db DRIZZLE, DRIZZLE     ; abilities
        db DRIZZLE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end
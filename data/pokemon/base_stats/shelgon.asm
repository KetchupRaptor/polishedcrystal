	dw 00undefined ;national dex no
        
        db  65,  95, 100,  50,  60,  50
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db DRAGON, DRAGON ; type
        db 45 ; catch rate
        db 147 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 8 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/shelgon/front.dimensions"  
        db ROCK_HEAD, ROCK_HEAD     ; abilities
        db OVERCOAT    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_DRAGON ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end
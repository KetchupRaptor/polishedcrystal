	dw 00638 ;national dex no
        
        db  91,  90, 129, 108,  90,  72
        evs  0,   0,   3,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db STEEL, FIGHTING ; type
        db 3 ; catch rate
        db 255 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 15 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/cobalion/front.dimensions"  
        db JUSTIFIED, JUSTIFIED     ; abilities
        db JUSTIFIED    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE, EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end
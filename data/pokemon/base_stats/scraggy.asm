	dw 00559 ;national dex no
        
        db  50,  75,  70,  48,  35,  70
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db DARK, FIGHTING ; type
        db 180 ; catch rate
        db 70 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/scraggy/front.dimensions"  
        db SHED_SKIN, MOXIE     ; abilities
        db INTIMIDATE    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD, EGG_DRAGON ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end
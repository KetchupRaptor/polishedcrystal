	dw 000undefined ;national dex no
        
        db  40,  45,  35,  90,  40,  40
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, NORMAL ; type
        db 255 ; catch rate
        db 58 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/meowth/front.dimensions"  
        db PICKUP, TECHNICIAN     ; abilities
        db UNNERVE    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end
	dw 00undefined ;national dex no
        
        db  65, 130,  60,  65,  95, 110
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FIRE, FIRE ; type
        db 45 ; catch rate
        db 184 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 7 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/flareon/front.dimensions"  
        db FLASH_FIRE, FLASH_FIRE     ; abilities
        db GUTS    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end
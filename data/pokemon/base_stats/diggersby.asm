	dw 00660 ;national dex no
        
        db  85,  56,  77,  78,  50,  77
        evs  2,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, GROUND ; type
        db 127 ; catch rate
        db 148 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/diggersby/front.dimensions"  
        db PICKUP, CHEEK_POUCH     ; abilities
        db HUGE_POWER    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end
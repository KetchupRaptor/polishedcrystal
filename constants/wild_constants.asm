
WILD_MAP_SIZE EQU 5
WILD_POKE_SIZE EQU 7

; Time constants
ENCOUNTER_TIME_MASK EQU %11110000
DEFAULT_TIMES   EQU %00000000
MORN_ENC        EQU %10000000
DAY_ENC         EQU %01000000
DUSK_ENC        EQU %00100000
NIGHT_ENC       EQU %00010000
ALL_TIMES       EQU %11110000

; Encounter rates
MORN_ENCOUNTER_MASK     EQU %11000000
DAY_ENCOUNTER_MASK      EQU %00110000
DUSK_ENCOUNTER_MASK     EQU %00001100
NIGHT_ENCOUNTER_MASK    EQU %00000011
    const_def
    const COMMON    ; 0
    const UNCOMMON  ; 1
    const RARE      ; 2
    const VERY_RARE ; 3

COMMON_ALL  EQU %00000000

COMMON_RATE     EQU 10 percent
UNCOMMON_RATE   EQU 6 percent
RARE_RATE       EQU 4 percent
VERY_RARE_RATE  EQU 2 percent

; Percent constants
WILD_PERCENT_MASK EQU %00001111
    const_def
    const WILD_1P   ;0
    const WILD_4P   ;1
    const WILD_5P   ;2
    const WILD_9P   ;3
    const WILD_10P  ;4
    const WILD_15P  ;5
    const WILD_20P  ;6
    const WILD_25P  ;7
    const WILD_30P  ;8
    const WILD_35P  ;9
    const WILD_40P  ;10
    const WILD_45P  ;11
    const WILD_50P  ;12
    const WILD_60P  ;13
    const WILD_75P  ;14
    ;const WILD_100P ;15

WILD_LVL_OVER_MASK  EQU %10000000
WILD_LVL_OVER       EQU %10000000
WILD_LVL_OFF        EQU %00000000

WILD_LVL_MASK       EQU %01111111

    const_def
    shift_const WILD_NO_NVE         ;0
    shift_const WILD_DO_SE          ;1
WILD_TYPESMART  EQU WILD_NO_NVE | WILD_DO_SE
    shift_const WILD_OVERBUFF       ;2
    shift_const WILD_EQUAL_BUFFS    ;3
WILD_BUFFSMART  EQU WILD_OVERBUFF | WILD_EQUAL_BUFFS
    shift_const WILD_STATUS         ;4
    shift_const WILD_HEAL           ;5
WILD_MOVESMART  EQU WILD_STATUS | WILD_HEAL
    shift_const WILD_6              ;6
    shift_const WILD_7              ;7


    const_def 1
    const REGION_KANTO
    const REGION_JOHTO
    const REGION_HOENN
    const REGION_SINNOH
    const REGION_UNOVA
    const REGION_KALOS
    const REGION_ALOLA
    const REGION_GALAR ;ironic

UNOWN EQU 20
NUM_POKEMON EQU $fd
EGG EQU $fe

; pokemon are organized by species and group, a pokemon must evolve into a pokemon within the same group
; there are 30 potential groups of 253 pokemon, more than 30 if the nuzloke death flag is removed, but I should like to keep it
; pokemon with different forms are treated as different "species" within the same group this is why unown and probably spinda will get a group all to themselves when implemented because they have an obscene amount of forms
; pokemon that have alternate forms that are not completely stand alone should not be listed as a speerate species here, I would much rather devise another method
; mega form or alternate form pokemon (when imlemented) that are based on a hold item should not be treated as seperate "species" because the very item they hold is the byte needed to know if they should be an alternate form
; whereas a pokemon who's form is completely independent of what it is holding and can exist independantly of it, shoulc very much be treated as its own "species" as I don't believe any region would ever go over the 200 mark
; the national dex number that is shown is defined in the base data struct, it doesn't matter what constant a pokemon is bulbasaur could be $ab and as long as its base data is defined right it will always display as #001
; even if the order isn't "faithful" by the hand of putting later gen pokemon in earlier groups, I believe it will be much cleaner, as evolution groups will all be contagious to eachother rather than spread across several regions
; it is very much possible to code an evolution method to make a pokemon evolve into one of a different group, but it is unnecessary at the moment
	nat_dexmon_group 1, REGION_KANTO
	nat_dexmon BULBASAUR
	nat_dexmon IVYSAUR	
	nat_dexmon VENUSAUR 
	nat_dexmon CHARMANDER 
	nat_dexmon CHARMELEON 
	nat_dexmon CHARIZARD
	nat_dexmon SQUIRTLE 
	nat_dexmon WARTORTLE
	nat_dexmon BLASTOISE
	nat_dexmon CATERPIE 
	nat_dexmon METAPOD	
	nat_dexmon BUTTERFREE 
	nat_dexmon WEEDLE	 
	nat_dexmon KAKUNA	 
	nat_dexmon BEEDRILL 
	nat_dexmon PIDGEY	 
	nat_dexmon PIDGEOTTO
	nat_dexmon PIDGEOT	
	nat_dexmon RATTATA	
	nat_dexmon RATICATE 
	nat_dexmon RATTATA_ALOLA	
	nat_dexmon RATICATE_ALOLA 
	nat_dexmon SPEAROW	
	nat_dexmon FEAROW	 
	nat_dexmon EKANS	
	nat_dexmon ARBOK	
	nat_dexmon PICHU	
	nat_dexmon PIKACHU	
	nat_dexmon RAICHU	 
	nat_dexmon RAICHU_ALOLA	 
	nat_dexmon SANDSHREW
	nat_dexmon SANDSLASH
	nat_dexmon SANDSHREW_ALOLA
	nat_dexmon SANDSLASH_ALOLA
	nat_dexmon NIDORAN_F
	nat_dexmon NIDORINA
	nat_dexmon NIDOQUEEN
	nat_dexmon NIDORAN_M
	nat_dexmon NIDORINO 
	nat_dexmon NIDOKING 
	nat_dexmon CLEFFA	
	nat_dexmon CLEFAIRY 
	nat_dexmon CLEFABLE 
	nat_dexmon VULPIX	 
	nat_dexmon NINETALES
	nat_dexmon VULPIX_ALOLA
	nat_dexmon NINETALES_ALOLA
	nat_dexmon IGGLYBUFF
	nat_dexmon JIGGLYPUFF
	nat_dexmon WIGGLYTUFF
	nat_dexmon ZUBAT
	nat_dexmon GOLBAT	
	nat_dexmon CROBAT	
	nat_dexmon ODDISH	
	nat_dexmon GLOOM
	nat_dexmon VILEPLUME
	nat_dexmon BELLOSSOM
	nat_dexmon PARAS
	nat_dexmon PARASECT
	nat_dexmon VENONAT
	nat_dexmon VENOMOTH
	nat_dexmon DIGLETT
	nat_dexmon DUGTRIO
 	nat_dexmon DIGLETT_ALOLA
	nat_dexmon DUGTRIO_ALOLA
	nat_dexmon MEOWTH	
	nat_dexmon PERSIAN
	nat_dexmon MEOWTH_ALOLA	
	nat_dexmon PERSIAN_ALOLA
	nat_dexmon PSYDUCK
	nat_dexmon GOLDUCK
	nat_dexmon MANKEY	
	nat_dexmon PRIMEAPE
	nat_dexmon GROWLITHE
	nat_dexmon ARCANINE
	nat_dexmon POLIWAG
	nat_dexmon POLIWHIRL
	nat_dexmon POLIWRATH
	nat_dexmon POLITOED
	nat_dexmon ABRA	
	nat_dexmon KADABRA
	nat_dexmon ALAKAZAM
	nat_dexmon MACHOP	
	nat_dexmon MACHOKE
	nat_dexmon MACHAMP
	nat_dexmon BELLSPROUT
	nat_dexmon WEEPINBELL
	nat_dexmon VICTREEBEL
	nat_dexmon TENTACOOL
	nat_dexmon TENTACRUEL
	nat_dexmon GEODUDE
	nat_dexmon GRAVELER
	nat_dexmon GOLEM
	nat_dexmon GEODUDE_ALOLA
	nat_dexmon GRAVELER_ALOLA
	nat_dexmon GOLEM_ALOLA
	nat_dexmon PONYTA
	nat_dexmon RAPIDASH
	nat_dexmon SLOWPOKE
	nat_dexmon SLOWBRO
	nat_dexmon SLOWKING
	nat_dexmon MAGNEMITE
	nat_dexmon MAGNETON
	nat_dexmon MAGNEZONE
	nat_dexmon FARFETCH_D
	nat_dexmon DODUO
	nat_dexmon DODRIO	
	nat_dexmon SEEL	
	nat_dexmon DEWGONG
	nat_dexmon GRIMER	
	nat_dexmon MUK	
	nat_dexmon GRIMER_ALOLA	
	nat_dexmon MUK_ALOLA	
	nat_dexmon SHELLDER
	nat_dexmon CLOYSTER
	nat_dexmon GASTLY	
	nat_dexmon HAUNTER
	nat_dexmon GENGAR	
	nat_dexmon ONIX	
	nat_dexmon STEELIX
	nat_dexmon DROWZEE
	nat_dexmon HYPNO
	nat_dexmon KRABBY	
	nat_dexmon KINGLER
	nat_dexmon VOLTORB
	nat_dexmon ELECTRODE
	nat_dexmon EXEGGCUTE
	nat_dexmon EXEGGUTOR
	nat_dexmon EXEGGUTOR_ALOLA
	nat_dexmon CUBONE	
	nat_dexmon MAROWAK
	nat_dexmon MAROWAK_ALOLA
	nat_dexmon TYROGUE
	nat_dexmon HITMONLEE
	nat_dexmon HITMONCHAN
	nat_dexmon HITMONTOP
	nat_dexmon LICKITUNG
	nat_dexmon LICKILICKY
	nat_dexmon KOFFING
	nat_dexmon WEEZING
	nat_dexmon RHYHORN
	nat_dexmon RHYDON
	nat_dexmon RHYPERIOR
	nat_dexmon HAPPINY
	nat_dexmon CHANSEY
	nat_dexmon BLISSEY
	nat_dexmon TANGELA
	nat_dexmon TANGROWTH
	nat_dexmon KANGASKHAN
	nat_dexmon HORSEA	
	nat_dexmon SEADRA	
	nat_dexmon KINGDRA	
	nat_dexmon GOLDEEN
	nat_dexmon SEAKING
	nat_dexmon STARYU	
	nat_dexmon STARMIE
	nat_dexmon MIME_JR
	nat_dexmon MR__MIME
	nat_dexmon SCYTHER
	nat_dexmon SCIZOR	
	nat_dexmon SMOOCHUM
	nat_dexmon JYNX	
	nat_dexmon ELEKID	
	nat_dexmon ELECTABUZZ
	nat_dexmon ELECTIVIRE
	nat_dexmon MAGBY
	nat_dexmon MAGMAR	
	nat_dexmon MAGMORTAR
	nat_dexmon PINSIR	
	nat_dexmon TAUROS
	nat_dexmon MAGIKARP
	nat_dexmon GYARADOS
	nat_dexmon LAPRAS	
	nat_dexmon DITTO
	nat_dexmon EEVEE
	nat_dexmon VAPOREON
	nat_dexmon JOLTEON
	nat_dexmon FLAREON
	nat_dexmon ESPEON	
	nat_dexmon UMBREON
	nat_dexmon LEAFEON
	nat_dexmon GLACEON
	nat_dexmon SYLVEON
	nat_dexmon PORYGON
	nat_dexmon PORYGON2
	nat_dexmon PORYGON_Z
	nat_dexmon OMANYTE
	nat_dexmon OMASTAR
	nat_dexmon KABUTO	
	nat_dexmon KABUTOPS
	nat_dexmon AERODACTYL
	nat_dexmon MUNCHLAX
	nat_dexmon SNORLAX
	nat_dexmon ARTICUNO
	nat_dexmon ZAPDOS	
	nat_dexmon MOLTRES
	nat_dexmon DRATINI
	nat_dexmon DRAGONAIR
	nat_dexmon DRAGONITE
	nat_dexmon MEWTWO	
	nat_dexmon MEW
NUM_KANTO_POKEMON EQU const_value +-1

;I hereby dub thee snowshrew, to save thee from a name that makes absolutely no sense

SNOWSHREW EQU SANDSHREW_ALOLA
SNOWSLASH EQU SANDSLASH_ALOLA

GROUP_SNOWSHREW EQU GROUP_SANDSHREW_ALOLA
GROUP_SNOWSLASH EQU GROUP_SANDSLASH_ALOLA

;johto mons
	nat_dexmon_group 1, REGION_JOHTO
	nat_dexmon CHIKORITA
	nat_dexmon BAYLEEF
	nat_dexmon MEGANIUM
	nat_dexmon CYNDAQUIL
	nat_dexmon QUILAVA
	nat_dexmon TYPHLOSION
	nat_dexmon TOTODILE
	nat_dexmon CROCONAW
	nat_dexmon FERALIGATR
	nat_dexmon SENTRET
	nat_dexmon FURRET	
	nat_dexmon HOOTHOOT
	nat_dexmon NOCTOWL
	nat_dexmon LEDYBA	
	nat_dexmon LEDIAN	
	nat_dexmon SPINARAK
	nat_dexmon ARIADOS
	nat_dexmon CHINCHOU
	nat_dexmon LANTURN
	nat_dexmon TOGEPI	
	nat_dexmon TOGETIC
	nat_dexmon TOGEKISS
	nat_dexmon NATU	
	nat_dexmon XATU	
	nat_dexmon MAREEP	
	nat_dexmon FLAAFFY
	nat_dexmon AMPHAROS
	nat_dexmon AZURILL
	nat_dexmon MARILL	
	nat_dexmon AZUMARILL
	nat_dexmon BONSLY
	nat_dexmon SUDOWOODO
	nat_dexmon HOPPIP	
	nat_dexmon SKIPLOOM
	nat_dexmon JUMPLUFF
	nat_dexmon AIPOM
	nat_dexmon AMBIPOM
	nat_dexmon SUNKERN
	nat_dexmon SUNFLORA
	nat_dexmon YANMA
	nat_dexmon YANMEGA
	nat_dexmon WOOPER	
	nat_dexmon QUAGSIRE
	nat_dexmon MURKROW
	nat_dexmon HONCHKROW
	nat_dexmon MISDREAVUS
	nat_dexmon MISMAGIUS
	nat_dexmon DUMMY_UNOWN 
	nat_dexmon WYNAUT
	nat_dexmon WOBBUFFET
	nat_dexmon GIRAFARIG
	nat_dexmon PINECO	
	nat_dexmon FORRETRESS
	nat_dexmon DUNSPARCE
	nat_dexmon GLIGAR	
	nat_dexmon GLISCOR
	nat_dexmon SNUBBULL
	nat_dexmon GRANBULL
	nat_dexmon QWILFISH
	nat_dexmon SHUCKLE
	nat_dexmon HERACROSS
	nat_dexmon SNEASEL
	nat_dexmon WEAVILE
	nat_dexmon TEDDIURSA
	nat_dexmon URSARING
	nat_dexmon SLUGMA	
	nat_dexmon MAGCARGO
	nat_dexmon SWINUB	
	nat_dexmon PILOSWINE
	nat_dexmon MAMOSWINE
	nat_dexmon CORSOLA
	nat_dexmon REMORAID
	nat_dexmon OCTILLERY
	nat_dexmon DELIBIRD
	nat_dexmon MANTYKE
	nat_dexmon MANTINE
	nat_dexmon SKARMORY
	nat_dexmon HOUNDOUR
	nat_dexmon HOUNDOOM
	nat_dexmon PHANPY	
	nat_dexmon DONPHAN
	nat_dexmon STANTLER
	nat_dexmon SMEARGLE
	nat_dexmon MILTANK
	nat_dexmon RAIKOU
	nat_dexmon ENTEI
	nat_dexmon SUICUNE
	nat_dexmon LARVITAR
	nat_dexmon PUPITAR
	nat_dexmon TYRANITAR
	nat_dexmon LUGIA
	nat_dexmon HO_OH
	nat_dexmon CELEBI	
NUM_JOHTO_POKEMON EQU const_value +-1

; hoo boy Unown you've got a lot of forms, so he gets his own "region" which would only be used for pics really, 
	nat_dexmon_group 1, UNOWN
	nat_dexmon UNOWN_A ;  1
	nat_dexmon UNOWN_B ;  2
	nat_dexmon UNOWN_C ;  3
	nat_dexmon UNOWN_D ;  4
	nat_dexmon UNOWN_E ;  5
	nat_dexmon UNOWN_F ;  6
	nat_dexmon UNOWN_G ;  7
	nat_dexmon UNOWN_H ;  8
	nat_dexmon UNOWN_I ;  9
	nat_dexmon UNOWN_J ; 10
	nat_dexmon UNOWN_K ; 11
	nat_dexmon UNOWN_L ; 12
	nat_dexmon UNOWN_M ; 13
	nat_dexmon UNOWN_N ; 14
	nat_dexmon UNOWN_O ; 15
	nat_dexmon UNOWN_P ; 16
	nat_dexmon UNOWN_Q ; 17
	nat_dexmon UNOWN_R ; 18
	nat_dexmon UNOWN_S ; 19
	nat_dexmon UNOWN_T ; 20
	nat_dexmon UNOWN_U ; 21
	nat_dexmon UNOWN_V ; 22
	nat_dexmon UNOWN_W ; 23
	nat_dexmon UNOWN_X ; 24
	nat_dexmon UNOWN_Y ; 25
	nat_dexmon UNOWN_Z ; 26
	nat_dexmon UNOWN_EXCLAMATION_MARK
	nat_dexmon UNOWN_QUESTION_MARK
NUM_UNOWN EQU const_value + -1 ; 26

;generation hoenn
	nat_dexmon_group 1, REGION_HOENN
	nat_dexmon TREECKO
	nat_dexmon GROVYLE
	nat_dexmon SCEPTILE
	nat_dexmon TORCHIC
	nat_dexmon COMBUSKEN
	nat_dexmon BLAZIKEN
	nat_dexmon MUDKIP
	nat_dexmon MARSHTOMP
	nat_dexmon SWAMPERT
	nat_dexmon POOCHYENA
	nat_dexmon MIGHTYENA
	nat_dexmon ZIZAGOON
	nat_dexmon LINOONE
	nat_dexmon WURMPLE
	nat_dexmon SILCOON
	nat_dexmon BEAUTIFLY
	nat_dexmon CASCOON
	nat_dexmon DUSTOX
	nat_dexmon LOTAD
	nat_dexmon LOMBRE
	nat_dexmon LUDICOLO
	nat_dexmon SEEDOT
	nat_dexmon NUZLEAF
	nat_dexmon SHIFTRY
	nat_dexmon TAILOW
	nat_dexmon SWELLOW
	nat_dexmon WINGULL
	nat_dexmon PELIPPER
	nat_dexmon RALTS
	nat_dexmon KIRLIA
	nat_dexmon GARDEVOIR
	nat_dexmon GALLADE
	nat_dexmon SURSKIT
	nat_dexmon MASQUERAIN
	nat_dexmon SHROOMISH
	nat_dexmon BRELOOM
	nat_dexmon SLACKOTH
	nat_dexmon VIGOROTH
	nat_dexmon SLACKING
	nat_dexmon NINCADA
	nat_dexmon NINJASK
	nat_dexmon SHEDINJA 
 	nat_dexmon WHISMUR
	nat_dexmon LOUDRED
	nat_dexmon EXPLOUD
	nat_dexmon MAKUHITA
	nat_dexmon HARIYAMA
	nat_dexmon NOSEPASS
	nat_dexmon PROBOPASS
	nat_dexmon SKITTY
	nat_dexmon DELCATTY
	nat_dexmon SABLEYE
	nat_dexmon MAWILE
	nat_dexmon ARON 
 	nat_dexmon LAIRON
	nat_dexmon AGGRON
	nat_dexmon MEDITITE
	nat_dexmon MEDICHAM
	nat_dexmon ELECTRIKE
	nat_dexmon MENECTRIC
	nat_dexmon PLUSLE
	nat_dexmon MINUN
	nat_dexmon VOLBEAT
	nat_dexmon ILLUMISE
	nat_dexmon BUDEW
	nat_dexmon ROSELIA
	nat_dexmon ROSERADE
	nat_dexmon GULPIN
	nat_dexmon SWALOT
	nat_dexmon CARVANHA
	nat_dexmon SHARPEDO
	nat_dexmon WAILMER
	nat_dexmon WAILORD
	nat_dexmon NUMEL
	nat_dexmon CAMERUPT
	nat_dexmon TORKOAL
	nat_dexmon SPOINK
	nat_dexmon GRUMPIG
	nat_dexmon SPINDA
	nat_dexmon TRAPINCH
	nat_dexmon VIBRAVA
	nat_dexmon FLYGON
	nat_dexmon CACNEA
	nat_dexmon CACTURNE 
 	nat_dexmon SWABLU
	nat_dexmon ALTARIA
	nat_dexmon ZANGOOSE
	nat_dexmon SEVIPER
	nat_dexmon LUNATONE
	nat_dexmon SOLROCK
	nat_dexmon BARBOACH
	nat_dexmon WHISCASH
	nat_dexmon CORPHISH
	nat_dexmon CRAWDAUNT
	nat_dexmon BALTOY
	nat_dexmon CLAYDOL
	nat_dexmon LILEEP
	nat_dexmon CRADILY
	nat_dexmon ANORITH
	nat_dexmon ARMALDO
	nat_dexmon FEEBAS
	nat_dexmon MILOTIC
	nat_dexmon CASTFORM ; castform's forms are controlled by the weather, and cannot exist independent of it outside battle, and merely change the pic and type, but not the stats therefore only one entry
	nat_dexmon KECLEON
	nat_dexmon SHUPPET
	nat_dexmon BANETTE
	nat_dexmon DUSKULL
	nat_dexmon DUSCLOPS
	nat_dexmon DUSKNOIR
	nat_dexmon TROPIUS
	nat_dexmon CHINGLING
	nat_dexmon CHIMECHO
	nat_dexmon ABSOL
	nat_dexmon SNORUNT
	nat_dexmon GLALIE
	nat_dexmon FROSSLASS
	nat_dexmon SPHEAL
	nat_dexmon SEALEO
	nat_dexmon WALREIN
	nat_dexmon CLAMPERL
	nat_dexmon HUNTAIL
	nat_dexmon GOREBYSS
	nat_dexmon RELICANTH
	nat_dexmon LUVDISC
	nat_dexmon BAGON
	nat_dexmon SHELGON
	nat_dexmon SALAMENCE
	nat_dexmon BELDUM
	nat_dexmon METANG
	nat_dexmon METAGROSS
	nat_dexmon REGIROCK
	nat_dexmon REGICE
	nat_dexmon REGISTEEL
	nat_dexmon LATIAS
	nat_dexmon LATIOS
	nat_dexmon KYOGRE 
 	nat_dexmon GROUDON
	nat_dexmon RAYQUAZA
	nat_dexmon JIRACHI
	nat_dexmon DEOXYS_DEFENSE
	nat_dexmon DEOXYS_NORMAL
	nat_dexmon DEOXYS_ATTACK
	nat_dexmon DEOXYS_SPEED
NUM_HOENN_POKEMON EQU const_value +-1


; gen sinnoh mons
	nat_dexmon_group 1, REGION_SINNOH
	nat_dexmon TURTWIG
	nat_dexmon GROTLE
	nat_dexmon TORTERRA
	nat_dexmon CHIMCHAR
	nat_dexmon MONFERNO
	nat_dexmon INFERNAPE
	nat_dexmon PIPLUP
	nat_dexmon PRINPLUP
	nat_dexmon EMPLOEON
	nat_dexmon STARLY
	nat_dexmon STARAVIA
	nat_dexmon STARAPTOR
	nat_dexmon BIDOOF
	nat_dexmon BIBAREL
	nat_dexmon KRICKETOT
	nat_dexmon KRICKETUNE
	nat_dexmon SHINX
	nat_dexmon LUXIO
	nat_dexmon LUXRAY
	nat_dexmon CRAINIDOS
	nat_dexmon RAMPARDOS
	nat_dexmon SHEILDON
	nat_dexmon BASTIODON
	nat_dexmon BURMY_GRASS
	nat_dexmon BURMY_SAND
	nat_dexmon BURMY_TRASH
	nat_dexmon WORMADAM_GRASS
	nat_dexmon WORMADAM_SAND
	nat_dexmon WORMADAM_TRASH
	nat_dexmon MOTHIM
	nat_dexmon COMBEE
	nat_dexmon VESPIQUEN
	nat_dexmon PACHIRISU 
	nat_dexmon BUIZEL
	nat_dexmon FLOATZEL
	nat_dexmon CHERUBI
	nat_dexmon CHERRIM ; same reasons as castform
	nat_dexmon SHELLOS_WEST
	nat_dexmon GASTRODON_WEST
	nat_dexmon SHELLOS_EAST
	nat_dexmon GASTRODON_EAST
	nat_dexmon DRIFLOON
	nat_dexmon DRIFBLIM
	nat_dexmon BUNEARY
	nat_dexmon LOPUNNY
	nat_dexmon GLAMEOW
	nat_dexmon PURUGLY
	nat_dexmon STUNKY
	nat_dexmon SKUNKTANK
	nat_dexmon BRONZOR
	nat_dexmon BRONZONG
	nat_dexmon CHATOT
	nat_dexmon SPIRITOMB
	nat_dexmon GIBLE
	nat_dexmon GABITE
	nat_dexmon GARCHOMP
	nat_dexmon RIOLU
	nat_dexmon LUCARIO
	nat_dexmon HIPPOPOTAS
	nat_dexmon HIPPOWDON
	nat_dexmon SKORUPI
	nat_dexmon DRAPION
	nat_dexmon CROAGUNK
	nat_dexmon TOXICROAK
	nat_dexmon CARNIVINE
	nat_dexmon FINNEON
	nat_dexmon LUMINEON
	nat_dexmon SNOVER
	nat_dexmon ABOMASNOW
	nat_dexmon ROTOM
	nat_dexmon ROTOM_FAN
	nat_dexmon ROTOM_FROST
	nat_dexmon ROTOM_HEAT
	nat_dexmon ROTOM_MOW
	nat_dexmon ROTOM_WASH
	nat_dexmon UXIE
	nat_dexmon MESPRIT
	nat_dexmon AZELF
	nat_dexmon DIALGA
	nat_dexmon PALKIA
	nat_dexmon HEATRAN
	nat_dexmon REGIGIGAS
	nat_dexmon GIRATINA
	nat_dexmon CRESSELIA
	nat_dexmon PHIONE
	nat_dexmon MANAPHY
	nat_dexmon DARKRAI
	nat_dexmon SHAYMIN
	nat_dexmon SHAYMIN_SKY
	nat_dexmon ARCEUS ; types can be handled by the multitype ability via the item it holds and palette can be done in much the same way
NUM_SINNOH_POKEMON EQU const_value +-1

SHAYMIN_LAND EQU SHAYMIN

; gen unova mons
	nat_dexmon_group 1, REGION_UNOVA
	nat_dexmon VICTINI
	nat_dexmon SNIVY
	nat_dexmon SERVINE
	nat_dexmon SERPERIOR
	nat_dexmon TEPIG
	nat_dexmon PIGNITE
	nat_dexmon EMBOAR
	nat_dexmon OSHAWOTT
	nat_dexmon DEWOTT
	nat_dexmon SAMUROTT
	nat_dexmon PATRAT
	nat_dexmon WATCHOG
	nat_dexmon LILLIPUP 
	nat_dexmon HERDIER
	nat_dexmon STOUTlAND
	nat_dexmon PURRLOIN
	nat_dexmon LIEPARD
	nat_dexmon PANSAGE
	nat_dexmon SIMISAGE
	nat_dexmon PANSEAR
	nat_dexmon SIMISEAR
	nat_dexmon PANMPOUR
	nat_dexmon SIMIPOUR
	nat_dexmon MUNNA
	nat_dexmon MUSHARNA 
	nat_dexmon PIDOVE
	nat_dexmon TRANQUIL
	nat_dexmon UNFEZANT
	nat_dexmon BLITZLE
	nat_dexmon ZEBSTRIKA
	nat_dexmon ROGGENROLA
	nat_dexmon BOLDORE
	nat_dexmon GIGALITH
	nat_dexmon WOOBAT
	nat_dexmon SWOOBAT
	nat_dexmon DRILBUR
	nat_dexmon EXCADRILL
	nat_dexmon AUDINO
	nat_dexmon TIMBURR
	nat_dexmon GURDURR
	nat_dexmon CONKELDURR
	nat_dexmon TYMPOLE
	nat_dexmon PALPITOAD
	nat_dexmon SEISMITOAD
	nat_dexmon THROH 
	nat_dexmon SAWK 
	nat_dexmon SWEADDLE
	nat_dexmon SWADLOON
	nat_dexmon LEAVANNY
	nat_dexmon VENIPEDE
	nat_dexmon WHIRLIPEDE
	nat_dexmon SCOLIPEDE
	nat_dexmon COTTONEE
	nat_dexmon WHIMSICOTT
	nat_dexmon PETILIL
	nat_dexmon LILLIGANT
	nat_dexmon BASCULIN_RED
	nat_dexmon BASCULIN_BLUE
	nat_dexmon SANDILE
	nat_dexmon KROKOROK
	nat_dexmon KROOKODILE
	nat_dexmon DARUMAKA
	nat_dexmon DARMANITAN
	nat_dexmon MARACTUS
	nat_dexmon DWEBBLE
	nat_dexmon CRUSTLE
	nat_dexmon SCRAGGY
	nat_dexmon SCRAFTY 
	nat_dexmon SIGILYPH
	nat_dexmon YAMASK
	nat_dexmon COFAGRIGUS
	nat_dexmon TIRTOUGA 
	nat_dexmon CARACOSTA
	nat_dexmon ARCHEN
	nat_dexmon ARCHEOPS
	nat_dexmon TRUBBISH
	nat_dexmon GRABODOR
	nat_dexmon ZORUA
	nat_dexmon ZOROARK
	nat_dexmon MINCCINO
	nat_dexmon CINCCINO
	nat_dexmon GOTHITA
	nat_dexmon GOTHORITA
	nat_dexmon GOTHITELLE
	nat_dexmon SOLOSIS
	nat_dexmon DUOSION
	nat_dexmon REUNICLUS
	nat_dexmon DUCKLETT
	nat_dexmon SWANNA
	nat_dexmon VANILITE
	nat_dexmon DEERLING_SPRING
	nat_dexmon DEERLING_SUMMER
	nat_dexmon DEERLING_FALL
	nat_dexmon DEERLING_WINTER
	nat_dexmon SAWSBUCK_SPRING
	nat_dexmon SAWSBUCK_SUMMER
	nat_dexmon SAWSBUCK_FALL
	nat_dexmon SAWSBUCK_WINTER
	nat_dexmon EMOLGA
	nat_dexmon KARRABLAST
	nat_dexmon ESCAVALIER
	nat_dexmon FOONGUS
	nat_dexmon AMOONGUSS
	nat_dexmon FRILLISH_M
	nat_dexmon JELLICENT_M
	nat_dexmon FRILLISH_F
	nat_dexmon JELLICENT_F
	nat_dexmon ALOMOMOLA
	nat_dexmon JOLTIK
	nat_dexmon GALVANTULA
	nat_dexmon FERROSEED
	nat_dexmon FERROTHORN
	nat_dexmon KLINK
	nat_dexmon KLANG
	nat_dexmon KLINGKLANG
	nat_dexmon TYNAMO
	nat_dexmon EELECTRIK
	nat_dexmon EELECKTROSS
	nat_dexmon ELGYEM
	nat_dexmon BEHEEYEM
	nat_dexmon LITWICK
	nat_dexmon LAMPENT
	nat_dexmon CHANDELURE
	nat_dexmon AXEW
	nat_dexmon FRAXURE
	nat_dexmon HAXORUS
	nat_dexmon CUBCHOO
	nat_dexmon BEARTIC
	nat_dexmon CRYOGONAL
	nat_dexmon SHELMET
	nat_dexmon ACCELGOR
	nat_dexmon STUNFISK
	nat_dexmon MIENFOO
	nat_dexmon MIENSHAO
	nat_dexmon DRUDDIGON
	nat_dexmon GOLETT
	nat_dexmon GOLURK
	nat_dexmon PAWNIARD
	nat_dexmon BISHARP
	nat_dexmon BOUFALLANT
	nat_dexmon RUFFLET
	nat_dexmon BRAVIARY
	nat_dexmon VULLABY
	nat_dexmon MANDIBUZZ
	nat_dexmon HEATMOR
	nat_dexmon DURANT
	nat_dexmon DEINO
	nat_dexmon ZWEILOUS
	nat_dexmon HYDREIGON
	nat_dexmon LARVESTA
	nat_dexmon VOLCARONA
	nat_dexmon COBALION
	nat_dexmon TERRACKION
	nat_dexmon VIRIZION
	nat_dexmon TORNADUS
	nat_dexmon TORNADUS_THERIAN
	nat_dexmon THUNDURUS
	nat_dexmon THUNDURUS_THERIAN
	nat_dexmon RESHIRAM
	nat_dexmon ZEKROM
	nat_dexmon LANDORUS
	nat_dexmon LANDORUS_THERIAN
	nat_dexmon KYRUEM
	nat_dexmon KYRUEM_BLACK
	nat_dexmon KYRUEM_WHITE
	nat_dexmon KELDEO
	nat_dexmon KELDEO_RESOLUTE
	nat_dexmon MELLOETTA
	nat_dexmon MELLOETTA_PIROUETTE
	nat_dexmon GENESECT
NUM_UNOVA_POKEMON EQU const_value +-1
	nat_dexmon DARMANITAN_ZEN_MODE ; zen mode cannot exist outside of battle, but as both the types and stats change, it han an entry here

MELLOETTA_ARIA EQU MELLOETTA

;Ggen pokemon
	nat_dexmon_group 1, REGION_KALOS
	nat_dexmon CHESPIN
	nat_dexmon QUILLADIN
	nat_dexmon CHESNAUGHT
	nat_dexmon FENNEKIN
	nat_dexmon BRAIXEN
	nat_dexmon DELPHOX
	nat_dexmon FROAKIE
	nat_dexmon FROGADIER
	nat_dexmon GRENINJA
	nat_dexmon BUNNELBY
	nat_dexmon DIGGERSBY
	nat_dexmon FLETCHLING
	nat_dexmon FLETCHINDER
	nat_dexmon TALONFLAME
	nat_dexmon SCATTERBUG
	nat_dexmon SPEWPA
	nat_dexmon VIVVILON ; oh boy you seem like a bag of worms when we get to you
	nat_dexmon LITLEO
	nat_dexmon PYROAR
	nat_dexmon FLABEBE ; the color variance can be handled by vary colors by DVs
	nat_dexmon FLOETTE
	nat_dexmon FLOETTE_ETERNAL_FLOWER ; not sure but it basically is its own pokemon since it can't evolve and has a special learnset and such
	nat_dexmon FLORGES
	nat_dexmon SKIDDO
	nat_dexmon GOGOAT
	nat_dexmon PANCHAM
	nat_dexmon PANGORO
	nat_dexmon FURFROU ; you're in the same boat as vivvilon as yours is just cosmetic, not sure if it should be granted more slots really
	nat_dexmon ESPURR
	nat_dexmon MEOWSTIC_M
	nat_dexmon MEOWSTIC_F
	nat_dexmon HONEDGE
	nat_dexmon DOUBLADE
	nat_dexmon AEGISLASH
	nat_dexmon SPRITZEE
	nat_dexmon AROMATISSE
	nat_dexmon SWIRLIX
	nat_dexmon SLURPUFF
	nat_dexmon INKAY
	nat_dexmon MALAMAR
	nat_dexmon BINACLE
	nat_dexmon BARBRACLE
	nat_dexmon SKRELP
	nat_dexmon DRAGALGE
	nat_dexmon CLAUNCHER
	nat_dexmon CLAWLITZER
	nat_dexmon HELIOPTILE
	nat_dexmon HELIOLISK
	nat_dexmon TYRUNT
	nat_dexmon TYRANTRUM
	nat_dexmon AMAURA
	nat_dexmon AURORUS
	nat_dexmon HAWLUCHA
	nat_dexmon DEDENNE
	nat_dexmon CARBINK
	nat_dexmon GOOMY
	nat_dexmon SLIGGOO
	nat_dexmon GOODRA
	nat_dexmon KLEFKI
	nat_dexmon PHANTUMP
	nat_dexmon TREVENANT
	nat_dexmon PUMPKABOO
	nat_dexmon GOURGEIST
	nat_dexmon BERGMITE
	nat_dexmon AVALUGG
	nat_dexmon NOIBAT
	nat_dexmon NOIVERN
	nat_dexmon XERNEAS ; neutral mode and active mode do absoluely nothing
	nat_dexmon YVELTAL
	nat_dexmon ZYGARDE_10
	nat_dexmon ZYGARDE_50
	nat_dexmon ZYGARDE_COMPLETE
	nat_dexmon DIANCIE
	nat_dexmon HOOPA 
	nat_dexmon HOOPA_UNBOUND
	nat_dexmon VOLCANION
NUM_KALOS_POKEMON EQU const_value +-1
	nat_dexmon AEGISLASH_BLADE ; only exists in battle but its easier to count as a seperate species for the ease of recalculating its stats, and it won't count towards dex total
	nat_dexmon ZYGARDE_10_COMPLETE ; these are just so power construct knows what form to revert to, and are here for the same reason as aegislash, and don't count towards dex total
	nat_dexmon ZYGARDE_50_COMPLETE


AEGISLASH_SHIELD EQU AEGISLASH

;Gen mons
	nat_dexmon_group 1, REGION_ALOLA
	nat_dexmon ROWLET
	nat_dexmon DARTRIX
	nat_dexmon DECIDUEYE
	nat_dexmon LITTEN
	nat_dexmon TORRACAT
	nat_dexmon INCINEROAR
	nat_dexmon POPPLIO
	nat_dexmon BRIONE
	nat_dexmon PRIMARINA
	nat_dexmon PIKIPECK
	nat_dexmon TRUMBEAK
	nat_dexmon TOUCANNON
	nat_dexmon YUNGOOS
	nat_dexmon GUMSHOOS
	nat_dexmon GRUBBIN
	nat_dexmon CHARJABUG
	nat_dexmon VIKAVOLT
	nat_dexmon CRABRAWLER
	nat_dexmon CRABOMINABLE
	nat_dexmon ORICORIO_BAILLE
	nat_dexmon ORICORIO_POMPOM
	nat_dexmon ORICORIO_PAU
	nat_dexmon ORICORIO_SENSU
	nat_dexmon CUTIEFLY
	nat_dexmon RIBOMBEE
	nat_dexmon ROCKRUFF
	nat_dexmon LYCANROC_MIDDAY
	nat_dexmon LYCANROC_MIDNIGHT
	nat_dexmon LYCANROC_DUSK
	nat_dexmon LYCANROC_DAWN ; I don't care if its technically a fakemon I'm making it because why the fuck not have one for all four time periods
	nat_dexmon WISHIWASHI
	nat_dexmon WISHIWASHI_SCHOOL
	nat_dexmon MAREANIE
	nat_dexmon TOXAPEX
	nat_dexmon MUDBRAY
	nat_dexmon MUDSDALE
	nat_dexmon DEWPIDER
	nat_dexmon ARAQUANID
	nat_dexmon FOMANTIS
	nat_dexmon LURANTIS
	nat_dexmon MORELULL
	nat_dexmon SHIINOTIC
	nat_dexmon SALANDIT
	nat_dexmon SALAZZLE
	nat_dexmon STUFFUL
	nat_dexmon BEWEAR
	nat_dexmon BOUNSWEET
	nat_dexmon STEENEE
	nat_dexmon TSAREENA
	nat_dexmon COMFEY
	nat_dexmon ORANGURU
	nat_dexmon PASSIMIAN
	nat_dexmon WIMPOD
	nat_dexmon GOLISOPOD
	nat_dexmon SANDYGAST
	nat_dexmon PALLOSSAND
	nat_dexmon PYUKUMUKU
	nat_dexmon TYPE_NULL
	nat_dexmon SILVALLY ; types are handled by the RKS system ability via the item it holds and palette can be done in much the same way
	nat_dexmon MINIOR
	nat_dexmon KOMALA
	nat_dexmon TURTONATOR
	nat_dexmon TOGEDEMARU
	nat_dexmon MIMIKYU ; some people may argue its disguise breaking is a form change but it does not change type or stats and can be handled without another entry
	nat_dexmon BRUXISH
	nat_dexmon DRAMPA
	nat_dexmon DHELMISE
	nat_dexmon JANGMO_O
	nat_dexmon HAKAMO_O
	nat_dexmon KOMMO_O
	nat_dexmon TAPU_KOKO
	nat_dexmon TAPU_LELE
	nat_dexmon TAPU_BULU
	nat_dexmon TAPU_FINI
	nat_dexmon COSMOG
	nat_dexmon COSMOEM
	nat_dexmon SOLGALEO ; radiant sun phase does nothing
	nat_dexmon LUNALA ; full moon phase does nothing
	nat_dexmon NIHILEGO
	nat_dexmon BUZZSWOLE
	nat_dexmon PHEROMOSA
	nat_dexmon XURKITREE
	nat_dexmon CELESTEELA
	nat_dexmon KARTANA
	nat_dexmon GUZZLORD
	nat_dexmon NECROZMA
	nat_dexmon NECROZMA_DUSK_MANE
	nat_dexmon NECROZMA_DAWN_WINGS
	nat_dexmon NECROZMA_ULTRA
	nat_dexmon MAGEARNA
	nat_dexmon MARSHADOW ;zenith does absolutely nothing, didn't even know it changed
	nat_dexmon POIPOLE
	nat_dexmon NAGANADEL
	nat_dexmon STAKATAKA
	nat_dexmon BLACEPHALON
	nat_dexmon ZERAORA
	nat_dexmon MELTAN
	nat_dexmon MELMETAL
NUM_ALOLA_POKEMON EQU const_value +-1
	nat_dexmon MINIOR_SHIELDS_DOWN ; colors can be handled by vary colors by DVs, but exists here for much the same reason as aegislash


	nat_dexmon_group 1, REGION_GALAR
NUM_GALAR_POKEMON EQU const_value +-1




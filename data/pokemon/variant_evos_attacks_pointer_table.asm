variant_evosattacks: macro
    dbba \1, \2EvosAttacksPointers
endm

variant_evomoves: macro
    dbba \1, \2EvolutionMoves
endm


VariantEvosAttacksPointerTable:
    variant_evosattacks GROUP_GENERATION_ONE,  Kanto
    variant_evosattacks GROUP_GENERATION_TWO,  Johto
    variant_evosattacks GROUP_GENERATION_THREE, Hoenn

	dbba -1,        KantoEvosAttacksPointers

VariantEvolutionMovesPointerTable:
    variant_evomoves GROUP_GENERATION_ONE, Kanto  
    variant_evomoves GROUP_GENERATION_TWO, Johto
    variant_evomoves GROUP_GENERATION_THREE, Hoenn
	dbba -1,        KantoEvolutionMoves
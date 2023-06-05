// Exercio 50 
// Exibir de modo automatico numeros de 1 a 100 naturais 
// While Enddo For Next For Fixo Endfor



Function Main()

// Variaveis 
Local aResultWhile := {}
Local aResultFor := {}
Local aResultForLF := {}

// Funcoes 
aResultWhile := GeraNumNatWhile([aNumNatWhile])
aResultFor := GeraNumNatFor([aNumNatFor])
aResultForLF := GeraNumNatFor([aNumNatForLF])

// Ordenar por Ordem Crescente 
ASORT(aResultWhile)
ASORT(aResultFor)
ASORT(aResultForLF)

//Exibir
Qout ("*******Exibir Funcao While*******")
QOUT(hb_valtoexp(aResultWhile))
Qout ("*******Exibir Funcao For******* ")
QOUT(hb_valtoexp(aResultFor))
Qout ("*******Exibir Funcao For Laco Finito******* ")
QOUT(hb_valtoexp(aResultForLF))


Return Nil 

//************************************************************//

Static Function GeraNumNatWhile()
// Gera numeros de 1 a 100 com While, For e For Limitado 
Local aNumNatWhile := {}
Local iCont := 0
Local iRepet := 100

iCont := 1
iRepet := 100
While iCont <= iRepet
    AAdd(aNumNatWhile,iCont)
    aNumNatWhile[iCont] := iCont
    iCont++
ENDDO

Return (aNumNatWhile)

//******************************************************************************//


Static Function GeraNumNatFor()
// Gera numeros de 1 a 100 com While, For e For Limitado 
Local aNumNatFor := {}
Local iCont := 0
Local iRepet := 100

For iCont :=1 to iRepet
    AAdd(aNumNatFor,iCont)
    aNumNatFor[iCont] := iCont
NEXT



Return (aNumNatFor)

//*****************************************************************************//


Static Function GeraNumNatForLF()
// Gera numeros de 1 a 100 com While, For e For Limitado 
Local aNumNatForLF := {}
Local iCont := 0
//Local iRepet := 100


FOR icont:= 1 to 100
    AAdd(aNumNatForLF,iCont)
    aNumNatForLF[iCont] := iCont
EndFor

QOUT(hb_valtoexp(aNumNatForLF))

Return (aNumNatForLF)

//*************************************************************************************************

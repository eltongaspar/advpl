// Calculo Numero Primo 

Function CalcNumPrimo(rNumInform)

Local iNum := 0
Local iRest0 := 0
Local iRest := 0
Local iResult := 0
Local iCont := 1
Local aNumDiv := {}
Local aNumNotDiv := {}

iNum := rNumInform

While iCont <= iNum 

    iResult := Mod(iNum,iCont)
    

    If iResult = 0
        iRest0++
        AAdd(aNumDiv,[iCont])
   	 	aNumDiv[Len(aNumDiv)] := iCont
    ENDIF

    If iResult <> 0
        iRest++
        AAdd(aNumNotDiv,[iCont])
   	 	aNumNotDiv[Len(aNumNotDiv)] := iCont
    EndIf 
    iCont++ 
Enddo 

If iRest0 <= 2
    QOut("Numero Primo  " + Str(iNum))
ENDIF

If iRest0 > 2 
    QOut("Esse Numero nao e  Primo  " +  Str(iNum) )
    
EndIf 
QOut("Total de Numeros Divisiveis  " + Str(iRest0))
QOut("Total de Nao Divisiveis  "  +    Str(iRest))
QOut("Lsta de Numeros Divisiveis")
QOUT(hb_valtoexp(aNumDiv))
QOut("Lsta de Numeros Nao Divisiveis")
QOUT(hb_valtoexp(aNumNotDiv))

Return (iResult)


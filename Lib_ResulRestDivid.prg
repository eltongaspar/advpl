// Exercicio 54 
// Valores multiplos de 3 ate o 100


Function Lib_ResulRestDivid(iDivInform, iMaxInform)

Local aResult := {}
Local iNum := 1
Local iMax := 0
Local iDiv := 0
Local iTemp := 0
Local iCont := 1

iDiv := Val(iDivInform )
iMAx := Val(iMaxInform)

For inum := 1 to iMax 
    iTemp := Mod(iNum,iDiv)
    If iTemp = 0 
        AAdd(aResult,[iCont])
        aResult[Len(aResult)] := iNum
        ICont++
    EndIf
    
EndFor

While inum <= iMax 
    iTemp := Mod(iNum,iDiv)
    If iTemp = 0 
        AAdd(aResult,[iCont])
        aResult[Len(aResult)] := iNum
        ICont++
    EndIf
    iCont++
Enddo 




iTemp := Len(aResult)
iCont := 1

QOut("******* Numeros Divisiveis For *******")
While iCont <= iTemp
    Qout(aResult[iCont])
    iCont++
Enddo


iTemp := Len(aResult)
iCont := 1

QOut("******* Numeros Divisiveis While *******")
While iCont <= iTemp
    Qout(aResult[iCont])
    iCont++
Enddo


Return (aResult)

// Exercicio 54 
// Valores multiplos de 3 ate o 100


Function Main()

Local aResult := {}
Local iNum := 1
Local iMax := 100
Local iDiv := 3
Local iTemp := 0
Local iCont := 1


For inum := 1 to iMax 
    iTemp := Mod(iNum,iDiv)
    If iTemp = 0 
        AAdd(aResult,[iCont])
        aResult[Len(aResult)] := iNum
        ICont++
    EndIf
    
EndFor

iTemp := Len(aResult)
iCont := 1

QOut("******* Numeros Divisiveis por 3*******")
While iCont <= iTemp
    Qout(aResult[iCont])
    iCont++
Enddo




Return Nil 

// Gerador de Numeros Aleatorios de 0 a 100
// Qtde de geracoes usuario informa

Function GeraNumAleat(iQtdeGerInform)
Local iNum := 0
Local nMax := 100
Local nMin := 1
Local iCont := 1
Local nSeed := 1
Local aNumGer := {}
Local iQtdeRepet := 0
Local iTemp := 0

iQtdeRepet := Val(iQtdeGerInform)


While iCont <= iQtdeRepet
    iNum := RANDOM(nMin,nMax)
   
    If iNum >= nMin .And. iNum <= nMax 
    AAdd (aNumGer,iCont)
    aNumGer[iCont] := iNum
    iCont++
    EndIf
                
Enddo

iTemp := Len(aNumGer)
iCont := 1
QOut("******* Numeros Sorteados *******")
While iCont <= iTemp
    Qout(aNumGer[iCont])
    iCont++
Enddo



Return (aNumGer)

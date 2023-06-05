// Gerador de Numeros Aleatorios 
// Informar Numero Minimo e Maximo 
// Qtde de geracoes usuario informa

Function GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)
Local iNum := 0
Local iMax := 12
Local iMin := 1
Local iCont := 1
Local nSeed := 1
Local aNumGer := {}
Local iQtdeRepet := 0
Local iTemp := 0

iQtdeRepet := iQtdeGerInform
iMin := iNumMinInform
iMax := iNumMaxInfor


While iCont <= iQtdeRepet
    iNum := RANDOM(iMin,iMax)
   
    If iNum >= iMin .And. iNum <= iMax 
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

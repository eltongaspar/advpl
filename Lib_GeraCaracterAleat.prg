// Gerador de Caracteres Aleatorios 
// Qtde de geracoes usuario informa

Function GeraCaracterAleat(iQtdeGerInform,iMinInform,iMinInform2,iMaxInfor,iMaxInfor2)
Local iCaract := 0
Local iMascMin := 0
Local iMascMax:= 0
Local iMinuscMin := 0
Local iMinsucMax := 0
Local iCont := 1
Local nSeed := 1
Local aCaractGer := {}
Local iQtdeRepet := 1
Local iTemp := 0

iQtdeRepet := iQtdeGerInform
iMascMin := iMaxInfor
iMascMax := iMaxInfor2
iMinuscMin := iMinInform
iMinsucMax := iMinInform2


While iCont <= iQtdeRepet
    iCaract := RANDOM(iMascMin,iMinsucMax)
   
    If iCaract >= iMascMin .And. iCaract <= iMascMax .and. iCaract >= iMinuscMin .and. iMinsucMax <= iCaract
    AAdd (aCaractGer,iCont)
    aCaractGer[iCont] := iCaract
    iCont++
    EndIf
                
Enddo

iTemp := Len(aCaractGer)
iCont := 1
QOut("******* Numeros Sorteados *******")
While iCont <= iTemp
    Qout(aCaractGer[iCont])
    iCont++
Enddo



Return (aCaractGer)

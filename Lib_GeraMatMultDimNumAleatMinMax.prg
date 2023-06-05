// Gerador de Numeros Aleatorios 
// Informar Numero Minimo e Maximo 
// Qtde de geracoes usuario informa

Function GeraMatMultDimNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)
Local iNum := 0
Local iMax := 1000
Local iMin := 1
Local iCont := 1
Local iCont2 := 1
Local nSeed := 1
Local aNumGer := {}
Local iQtdeLin := 3
Local iQtdeCol := 3
Local iColPos:= 0
Local iQtdeRepet := 0
Local iTemp := 0
Local iMult := 0

iQtdeRepet := iQtdeGerInform
iMin := iNumMinInform
iMax := iNumMaxInfor

iCont := 1
iCont2 := 1

While iCont <= iQtdeCol

    iCont2 := 1
    iColPos := iCont

    While iCont2 <= iQtdeLin
        iNum := RANDOM(iMin,iMax)
   
        If iNum >= iMin .And. iNum <= iMax 
            iMult := RANDOM(iMin,iMax)
            Aadd(aNumGer,[iCont,iCont2])
            aNumGer[Len(aNumGer)] := {iColPos,iNum,iMult}
            iCont2++
        EndIf
                
    Enddo
    iCont++
    
Enddo


iTemp := Len(aNumGer)
iCont := 1

QOut("******* Numeros Sorteados *******")
While iCont <= iTemp
    
    Qout(aNumGer[iCont,2])
    Qout(aNumGer[iCont,3])
   iCont++
    
Enddo

QOut("Resultado")
QOUT(hb_valtoexp(aNumGer))


Return (aNumGer)

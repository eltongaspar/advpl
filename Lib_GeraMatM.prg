// Lib Geracao Matriz M
// Atribuido Matriz A,B,C a M

Function GeraMatM(aA,aB,aC,iQtdeGerInform)

Local aAM := {}
Local aBM := {}
Local aCM := {}
Local aMM := {}
lOCAL iQtdeMat := 1
Local iCont := 0
Local iCont2 := 0
Local iTemp := 0

aAM := aA
aBM := aB
aCM := aC

iCont := 1
iCont2 := 1
While iCont <= iQtdeMat

    While iCont2 <= iQtdeGerInform
        iTemp := aAM[iCont2]
        Aadd(aMM, [iCont,iCont2])
        aMM[Len(aMM)] := {"A",iTemp}
        iCont2++
        iCont++
    Enddo

    iCont2 := 1
     While iCont2 <= iQtdeGerInform
        iTemp := aBM[iCont2]
        Aadd(aMM, [iCont,iCont2])
        aMM[Len(aMM)] := {"B",iTemp}
        iCont2++
        iCont++
    Enddo

    iCont2 := 1
    While iCont2 <= iQtdeGerInform
        iTemp := aCM[iCont2]
        Aadd(aMM, [iCont,iCont2])
        aMM[Len(aMM)] := {"C",iTemp}
        iCont2++
        iCont++
    Enddo


    iCont++

Enddo

QOut("Matriz M")
QOUT(hb_valtoexp(aMM))

Return (aMM)

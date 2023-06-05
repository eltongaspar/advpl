// Lib Gera numeros de 2 ate N *Somente numeros pares

Function GeraNumPar(iRepetInform)

Local aNumPar := {}
Local iCont := 0
Local iCont2 := 0
Local iRepet := 0

iRepet := iRepetInform
iCont := 1

While iCont2 <= iRepet
    AAdd(aNumPar,iCont)
    aNumPar[iCont] := iCont2
    iCont2 := iCont2 + 2
    iCont++
ENDDO

Qout ("*******Exibir*******")
QOUT(hb_valtoexp(aNumPar))

Return (aNumPar)

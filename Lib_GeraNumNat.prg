// Lib Gera numeros de 1 a N

Function GeraNumNat(iRepetInform)

Local aNumNat := {}
Local iCont := 0
Local iRepet := 0

iRepet := iRepetInform
iCont := 1

While iCont <= iRepet
    AAdd(aNumNat,iCont)
    aNumNat[iCont] := iCont
    iCont++
ENDDO

Qout ("*******Exibir*******")
QOUT(hb_valtoexp(aNumNat))

Return (aNumNat)

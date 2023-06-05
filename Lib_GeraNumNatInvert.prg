// Lib Gera numeros de 1 a N Inverso 

Function GeraNumNatInvert(iRepetInform)

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

iCont := Len(aNumNat)
While iRepet > 0
    QOut(aNumNat[iCont])
    iRepet--
    iCont--
Enddo


Return (aNumNat)

Function GeraNumNatFor()
// Gera numeros de 1 a 100 com While, For e For Limitado 
Local aNumNatFor := {}
Local iCont := 0
Local iRepet := 100

For iCont :=1 to iRepet
    AAdd(aNumNatFor,iCont)
    aNumNatFor[iCont] := iCont
NEXT

QOUT(hb_valtoexp(aNumNatFor))


Return (aNumNatFor)

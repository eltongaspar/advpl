Function GeraNumNatForLF()
// Gera numeros de 1 a 100 com While, For e For Limitado 
Local aNumNatForLF := {}
Local iCont := 0
//Local iRepet := 100


FOR icont:= 1 to 100
    AAdd(aNumNatForLF,iCont)
    aNumNatForLF[iCont] := iCont
EndFor

QOUT(hb_valtoexp(aNumNatForLF))

Return (aNumNatForLF)

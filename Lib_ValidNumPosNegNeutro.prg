// Ler um numero e informar se e positivo, negativo ou zero



Function ValidNumPosNegNeutro()
Local iNum := 0
Local iValid := 0


// Informacao

Accept ("Informe um valor =  ") to iNum
iNum := Val(iNum)


If iNum = 0
    Qout("Numero Zero Neutro 0")
ENDIF

If Inum > 0 
    QOut ("Numero Positivo +")
ENDIF

If Inum < 0
    QOut ("Numero Negativo -")
EndIf

Return (iNum)

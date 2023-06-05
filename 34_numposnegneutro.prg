// Exercicio 34 
// Ler um numero e informar se é positivo, negativo ou zero

Function Main()
Local iNum := 0

// Informacao
Accept ("Informe um valor =  ") to iNum

//Coverter
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

Return Nil 

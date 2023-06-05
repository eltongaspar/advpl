// Lib Calculo numero par ou impar

Function ValidParImpar()

//Variaveis 
Local nNum := 0
Local nResult := 0

//Informacao
Accept ("Informe um numero:  ") to nNum

//Covertendo
nNum := Val(nNum)

//Calculos
nResult := Mod(nNum,2)

//Exibir 
QOut ("Resto da Divisao" + Str(nResult))

If nResult = 0
    QOut ("Numero Par")
EndIf 


If nResult > 0
    QOut ("Numero Impar")
EndIf 


Return (nResult)


// Exercio 21
// Conerter numero positivo em Negativo 

Function Main()

// Variaveis
Local iNum := 0
Local iNum2 := 0

// Informacao 
Accept ("Informe um numero:  ") to iNum

//Conersao de numero 
iNum := Val(iNum)
iNum2 := Inum
iNum2 := (ABS(Inum2))*-1

//Condicao 
If iNum > 0
iNum := iNum * -1
EndIf

If iNum < 0
iNum := iNum 
Endif

//Exibir
QOut ("Numero Convertido em Negativo" + Str(iNum))
QOut ("Numero 2 Convertido em Negativo" + Str(iNum2))

Return Nil 

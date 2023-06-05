// Exercico 22
// Numero maior menos menor 

Function Main()

//Variaveis
Local rNum :=0
Local rNum2 := 0
Local rResult := 0

//Informacao
Accept ("Informe o numero 1:  ") to rNum
Accept ("Informe o numero 2:  ") to rNum2

//Covertendo
rNum := Val(rNum)
rNum2 := Val(rNum2)

//Condicao
If rNum > rNum2
    rResult := rNum - rNum2
ENDIF

If rNum < rNum2
    rResult := rNum2 - rNum
ENDIF

//Exibir
QOut ("Resultado do >-<=  " + Str(rResult))


Return Nil

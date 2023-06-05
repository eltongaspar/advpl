// Exercicio 9
// Invertendo valores de variaveis 

Function Main()

//Variaveis
Local cA := ""
Local cB := ""
Local cTempA := ""
Local cTempB := ""

///informações 
Accept ("Informe o valor A:  ") to cA
Accept ("Informe o valor B: ") to cB

//Ivertendo variaveis 
cTempA := cB
cTempB := cA
cA := cTempA
cB := cTempB

//Exibir
QOut ("Valor Invertido A " + cA)
QOut ("Valor Invertido B " + cB)

Return Nil

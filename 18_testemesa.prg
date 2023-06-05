//Exercicio 18 
// Testes de mesa 

//Variaveis 
Function Main()
Local iX := 0
Local iY := 0
Local iProduto1 
Local iProduto2 

//Exibir
Wait ("Testes de Mesa Linha 1 X= " + "(" + Str(iX) + ")")
Wait ("Testes de Mesa Linha 2 X= " + "(" + Str(iY) + ")")

//Informacao
Accept ("Informe o valor de X: ") to iX
Accept ("Infome o valor de Y: ") to iY

//Exibir
Wait ("Testes de Mesa Linha 14 X= " + "{" + (iX) + "}")
Wait ("Testes de Mesa Linha 15 Y= " + "{" + (iY) + "}")

//Converter
iX := Val(iX)
iY := Val(iY)

//Exibir
Wait ("Testes de Mesa Linha 22 X= " + "{" + Str(iX) + "}")
Wait ("Testes de Mesa Linha 23 Y= " + "{" + Str(iY) + "}")

//Calculo
iProduto1 := iX * iY
iProduto2 := iY * IX

//Exibir
Wait ("Testes de Mesa Linha 32 Produto 1= " + "{" + Str(iProduto1) + "}")
Wait ("Testes de Mesa Linha 33 Produto 2 = " + "{" + Str(iProduto2) + "}")

QOut ("Resultado 1" + Str(iProduto1) + " = " + "Resultado 2" + Str(iProduto2))

Return Nil

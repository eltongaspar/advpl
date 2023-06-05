// Exercicio 17
// Ealabora o produto da soma pela diferena do quadrado de dois numero


Function Main()

//Variaveis 
Local rValor1 := 0
Local rValor2 := 0
Loca rProdSomaDifQuad := 0

//Informacoes 
Accept ("Informe Valor 1: ") to rValor1
Accept ("Informe Valor 2: ") to rValor2

//Conveter
rVAlor1 := Val(rValor1)
rVAlor2 := Val(rValor2)

//Calcular
rProdSomaDifQuad := (rValor1^2) - (rValor2^2) 

//Exibir
QOut ("O Produto da Soma pela Diferença do Quadrado: " + Str(rPRodSomaDifQuad))


Return Nil

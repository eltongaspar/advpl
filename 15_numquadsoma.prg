// Exercicio 15
// Calculo do Numero Quadrado de tres numeros
//Fazer o Quadarado da soma valores 

Function Main()

Local iNum := 0
Local iNum2 := 0
Local iNum3 :=0 
Local iQuadSoma := 0

//Informaçoes 
Accept ("Informe o numerao para calculo do Numero Quadrado A  ") to iNum
Accept ("Informe o numerao para calculo do Numero Quadrado B ") to iNum2
Accept ("Informe o numerao para calculo do Numero Quadrado C  ") to iNum3


//Conversao e ajustes
iNum := Round(Val(iNum),2)
iNum2 := Round(Val(iNum2),2)
iNum3 := Round(Val(iNum3),2)

// Calculo 
iQuadSoma := (iNum + iNum2 + iNum3)^2

//Exibir
QOut ("O Quadrado da soma e   " + Str(iQuadSoma))  

 Return Nil

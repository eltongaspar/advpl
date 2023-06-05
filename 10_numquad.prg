// Exercicio 10 
// Calculo do Numero Quadrado

Function Main()

//Variavies 
Local iNum := 0
Local iQuad := 0

//Informaçoes 
Accept ("Informe o numerao para calculo do Numero Quadrado  ") to iNum
 
 //Conversao e ajustes
 iNum := Round(Val(iNum),0)

 // Calculo 
 iQuad := iNum^2

 //Exibir
 QOut ("O numero Quadrado e   " + Str(iQuad))  

 Return Nil

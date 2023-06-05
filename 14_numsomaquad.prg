// Exercicio 14
// Calculo do Numero Quadrado de tres numeros
//Fazer a soma de seus resultos

Function Main()

Local iNum := 0
Local iNum2 := 0
Local iNum3 :=0 
Local iQuad := 0
Local iQuad2 := 0
Local iQuad3 := 0
Local iSoma:= 0

//Informaçoes 
Accept ("Informe o numerao para calculo do Numero Quadrado A  ") to iNum
Accept ("Informe o numerao para calculo do Numero Quadrado B ") to iNum2
Accept ("Informe o numerao para calculo do Numero Quadrado C  ") to iNum3


//Conversao e ajustes
iNum := Round(Val(iNum),2)
iNum2 := Round(Val(iNum2),2)
iNum3 := Round(Val(iNum3),2)

// Calculo 
iQuad := iNum^2
iQuad2 := iNum2^2
iQuad3 := iNum3^2
iSoma := iQuad + iQuad2 + iQuad3
//Exibir
QOut ("O numero Quadrado A e   " + Str(iQuad))  
QOut ("O numero Quadrado B e   " + Str(iQuad2))  
QOut ("O numero Quadrado C e   " + Str(iQuad3)) 
QOut ("O valor de A+B+C e   " + Str(isoma))  
 Return Nil

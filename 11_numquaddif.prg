// Exercicio 101
// Calculo do Numero Quadrado de dois numeros
//Fazer a subtracao de seus resultos

Function Main()

Local iNum1 := 0
Local iNum2 := 0
Local iDif:= 0

//InformaÃ§oes 
Accept ("Informe o numerao Valor1  ") to iNum1
Accept ("Informe o numerao Vaor2  ") to iNum2

//Conversao e ajustes
iNum1 := Round(Val(iNum1),0)
iNum2 := Round(Val(iNum2),0)

// Calculo 
iDif := (iNum1 - iNum2)^2

//Exibir
QOut ("S diferença do quadrado e:   " + Str(iDif))  
 Return Nil

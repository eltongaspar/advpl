// Exercicio 13
// Conversao de cambio Real / Dolares 

Function Main()

//Variaveis 
Local rCambio := 0
Local rTotalReal := 0
Local rDolar:= 0

//Informacoes
Accept ("Informe a taxa de cambio DS:  ") to rCambio
Accept ("Informe total dispnivel RS:  ") to rTotalReal

//Conversao
rCambio := Round(Val(rCambio),2)
rTotalReal := Round(Val(rTotalReal),2)

//Calculos
rDolar := rTotalReal / rCambio

//Exibir
QOut ("Total Disponivel em DS e " + Str(rDolar))
QOut ("Cambio Atual" + Str(rCambio))

Return Nil

// Exercicio 12 
// Conversao de cambio Real / Dolares 

Function Main()

//Variaveis 
Local rCambio := 0
Local rTotalDolar := 0
Local rReal:= 0

//Informacoes
Accept ("Informe a taxa de cambio RS:  ") to rCambio
Accept ("Informe total dispnivel DS:  ") to rTotalDolar

//Conversao
rCambio := Round(Val(rCambio),2)
rTotalDolar := Round(Val(rTotalDolar),2)

//Calculos
rReal := rCambio * rTotalDolar

//Exibir
QOut ("Total Disponivel em RS e " + Str(rReal))
QOut ("Cambio Atual" + Str(rCambio))

Return Nil

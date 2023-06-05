// Exercicio 17
// Media de dois valores 
//Nesse exercicioo erro esta em n�o Ler o valor Y, assim como na expressao Med: X + Y / 2
// Coorecao Ler Y e expresao Med := (X+Y)/2
Function Main()

// Variavies
Local rX := 0
Local rY :=0
Local rMedia := 0

//Informacoes
Accept ("Informe Valor X: ") to rX
Accept ("Informe Valor Y  ") to rY

//Converte
rX := Val(rX)
rY := Val(rY)

//Calculos
rMedia := (rX+rY)/2

//Exibir
Qout ("A Media e: " + Str(rMedia))

Return Nil

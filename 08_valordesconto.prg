// Exercicio 8 
// Calculo de desconto

Function Main()

//Variaveis
Local nValor := 0
Local nDescPerc:= 0
Local nDesc := 0
Local nVLPagar:= 0

//Informacoes
Accept ("Informe o valor total do produto  ") to nValor
Accept ("Informe o desconto%  ") to nDescPerc

//Conversa
nValor := Val(nValor)
nDescPerc := Val(nDescPerc)

//Calculos
nDesc := (nDescPerc/100)*nValor
nVLPagar := nValor - nDescPerc

//Exibir
QOut ("O percentual do desconto e " + Str(nDescPerc))
QOut ("O valor do desconto e  " + Str(nDesc))
Qout ("O valor do produto e:  " + Str(nValor))
Qout ("O valor a pagar:  " + Str(nVLPagar))

Return Nil

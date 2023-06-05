// Exercio 06
// Calculo Consumo combustivel com consumo medio variavel
//Variavies
Function CalculoCombDistan()
Local nConsumoCombMedio := 0
Local nTempo := 0
Local nVelMedia:= 0
Local nDistancia:= 0
Local nTotalLitros:= 0

//Informacoes
Accept ("Informe o Tempo gasto na viagem (Hs): ") to (nTempo)
Accept ("Informe a Velocidade Media da viagem: ") to (nVelMedia)
Accept ("Informe o Consumo Medio de combustivel ") to (nConsumoCombMedio)

//Conversao de variaveis
nTempo := Val(nTempo)
nVelMedia := Val(nVelMedia)
nConsumoCombMedio := Val(nConsumoCombMedio)

//Calculos
nDistancia := nTempo * nVelMedia
nTotalLitros := nDistancia / nConsumoCombMedio

//Exibicao
QOut ("A distancia percorrida foi" + Str(nDistancia) + " kms")
QOut ("O consumo de combustivel foi de" + Str(nTotalLitros) + " l")

Return Nil 

// Exerciocio 05  
//Calculo de combustivel com consumo fixo 12l/km

//Variavies
Function CalculoCombDistan()
Local nConsumoCombMedio := 12
Local nTempo := 0
Local nVelMedia:= 0
Local nDistancia:= 0
Local nTotalLitros:= 0

//Informacoes
Accept ("Informe o Tempo gasto na viagem (Hs): ") to (nTempo)
Accept ("Informe a Velocidade Media da viagem: ") to (nVelMedia)

//Conversao de variaveis
nTempo := Val(nTempo)
nVelMedia := Val(nVelMedia)

//Calculos
nDistancia := nTempo * nVelMedia
nTotalLitros := nDistancia / nConsumoCombMedio

//Exibicao
QOut ("A distancia percorrida foi" + Str(nDistancia) + " kms")
QOut ("O consumo de combustivel foi de" + Str(nTotalLitros) + " l")

Return Nil 











 
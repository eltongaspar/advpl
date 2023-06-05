// Exercicio 03 
// Calculo do volume de uma lata de oleo 

Function Main()

//Variaveis
Local nVolume:= 0
Local nRaio := 0
Local nAltura := 0
Local nPI := PI()

//Informações
Accept ("Informe a Altura da Lata de oleo:  ") to nAltura
Accept ("Informe o Raio da Lata de Oleo:  ") to nRaio

//Conversao de variaveis C to N
nAltura := Val(nAltura)
nRaio := Val(nRaio)

//Calculo Volume Lata
nVolume := nPI*(nRaio^2)*nAltura 

//Exibe Resultado
QOut ("PI: " + Str(nPI))
QOut ("O Volume m3 :  " + Str(nVolume))

Wait ("Fim, aperte uma tecla")

Return Nil 

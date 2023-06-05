// Exercio 26
// Calculo da Raiz Real de 1 

Function Main()

//Variavies 
Local nX := 0
Local nA := 0
Local nB := 0

//Informacoes 
Accept ("Informe valor de A:  ") to nA
Accept ("Informe valor de b:  ") to nB

//Covertendo 
nA := Val(nA)
nB := Val(nB)

//Calcular "x = –b/a"
nX := -(nB) / nA

QOut ("A Raiz Real e:  " + Str(nX))

Return Nil

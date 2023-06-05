// Exercicio 07 
//CAlculo de prestacao 

//Variaveis 
Function Main()
Local nPrestacao :=0
Local nTaxa := 0
Local nValor := 0
Local nDiasAtraso := 0
Local dHoje := Date() 
Local dVenc := CTOD("")
Set(_SET_DATEFORMAT,"dd/mm/yyyy") // Especificar formato Data

//Informa��e s
Accept ("Informe o valor da Prestacao:  ") to nValor
Accept ("Informe a taxa%: ") to nTaxa 
Accept ("Informe a data de vencimento  ") to dVenc 


//Convertendo e Tratando dados 
nValor := Val(nValor)
nTaxa := Val(nTaxa)


//Calculos 
nDiasAtraso := (Day(dHoje) - Day(CTOD(dVenc))) // Calculos dias
nPrestacao := nValor+(nValor*(nTaxa/100)*nDiasAtraso)

//Exibir 
Qout ("Dias em atraso:  " + Str(nDiasAtraso))
QOut (dHoje)
QOut ("O Valor total a pagar e:  " + Str(nPrestacao))
Return Nil









// Lista 07 - Exercicio 24
// Pesquisa Binaria 


Function Main ()

Local cDadosDec := ""
Local cDadosBin := ""
Local iBin2 := ""
Local cDec := ""

Accept("Informe um valor Decimal:  ") to cDadosDec
Accept("Informe um valor Binario:  ") to cDadosBin

iBin2 := BIN2L(cDadosDec)  
QOut("Binario Harbour  " + STR(iBin2))

cDec := L2Bin(Val(cDadosBin))
QOut("Numero Decimal  " + (cDec))


Return Nil

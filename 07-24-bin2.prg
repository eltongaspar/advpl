// Lista 07 - Exercicio 24
// Pesquisa Binaria 


Function Main ()

Local cDados := ""
Local iBin2 := ""

Accept("Informe um valor:  ") to cDados

iBin2 := BIN2L(cDados)  
QOut("Binario Harbour  " + STR(iBin2))
cDados := L2Bin(iBin2)  
QOut("Numero  " + (cDados))


Return Nil

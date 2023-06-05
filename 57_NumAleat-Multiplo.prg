// Exercicio 57 
// Gerar numeros aleatorios de 0 a 99 
// User determina a qtde de numeros gerados (Aleatorios de 0 a 99)
// User informa calculo do Multiplicaor 
// Retorno Nums alaetarios, valores multiplos

SET PROCEDURE TO Lib_GeraNumAleat.prg
SET PROCEDURE TO Lib_ResultDividMat.prg
Function Main()
Local iQtdeGerInform :=0
Local iDivInform := 0
Local aMTemp := {}

Accept("Informa a Qtde de Numeros a serem gerados:  ") to iQtdeGerInform
Accept("Informe o numero Multiplo a ser calculado junto aos Numeos Gerados:  ") to iDivInform

aMTemp := GeraNumAleat(iQtdeGerInform)


ResultDividMat(iDivInform, aMTemp)



Return Nil 

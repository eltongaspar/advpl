// Exercicio 59 
// Soma dos 10 primeiros numeros naturais pares

SET PROCEDURE TO Lib_SomaNum.prg

Function Main()
Local iNumIniInform := 1
Local iNumFimInform := 10
Local iTotal:= 0
Local cTipoInform := 'P'
Local cMensagInform := "O Valor Total da soma dos 10 primeiros numeros naturais pares"

SomaNum(iNumIniInform,iNumFimInform,cTipoInform,cMensagInform)


Return Nil

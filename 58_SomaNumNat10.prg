// Exercio 58 
// Soma dos 10 primeiros numeros naturais 

SET PROCEDURE TO Lib_SomaNum.prg

Function Main()
Local iNumIniInform := 1
Local iNumFimInform := 10
Local iTotal:= 0
Local cTipoInform := 'T'
Local cMensagInform := "O Valor Total da soma dos 10 primeiros numeros naturais"

SomaNum(iNumIniInform,iNumFimInform,cTipoInform,cMensagInform)


Return Nil


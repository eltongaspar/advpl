// Lista 06 Exercio 03
// Soma dos primeiros numeros naturais informados N

SET PROCEDURE TO Lib_SomaNum.prg

Function Main()
Local iNumIniInform := 1
Local iNumFimInform := 0
Local iTotal:= 0
Local cTipoInform := 'T' // I Impar P Par T Total
Local cMensagInform := "O Valor Total da soma dos N primeiros numeros naturais"

Accept("Informe o numero natual a ser Somado ") to iNumFimInform
iNumFimInform := Val(iNumFimInform)


SomaNum(iNumIniInform,iNumFimInform,cTipoInform,cMensagInform)


Return Nil

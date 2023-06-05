// Exercicio 60 
// Soma dos numeros naturais informado pelo user pares ou impares 

SET PROCEDURE TO Lib_SomaNum.prg

Function Main()
Local iNumIniInform := 1
Local iNumFimInform := 0
Local cTipoInform := '0'
Local cMensagInform := "O Valor Total da soma dos numeros naturais"
Local cMensagInformAux := ""

Accept("Informe um valor para calcular a soma de todos numeros:  ") to iNumFimInform

iNumFimInform := Val(iNumFimInform)

While cTipoInform < "P" .AND. cTipoInform <> "I"
Accept ("Informe o Calculos de Numeros Pares(P) ou Impares(I)  ") to cTipoInform
Enddo

IF cTipoInform = "P"
cMensagInformAux := "Numeros Pares"
EndIf

IF cTipoInform = "I"
cMensagInformAux := "Numeros Impares"
EndIf



SomaNum(iNumIniInform,iNumFimInform,cTipoInform,cMensagInform,cMensagInformAux)


Return Nil

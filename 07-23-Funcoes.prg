// Lista 07 - Exercicio 23
// Exibir a lista , 

Set Procedure to Lib_GeraNumAleatMinMax.prg
Set Procedure to Lib_ExibMatriz.prg
Set Procedure to Lib_ExibMatInvert.prg
Set Procedure to Lib_PesqMat.prg
Set Procedure to Lib_SomaMedMat.prg
Set Procedure to Lib_MaiorMenorNumMat.prg
Set Procedure to Lib_RandomMat.prg
Set Procedure to Lib_PesqMatPos.prg
Set Procedure to Lib_MsgLoad.prg


Function Main()
Local iQtdeGerInform := 8
Local iNumMinInform := 0
Local iNumMaxInfor := 100
Local aMat := {}
Local aMatriz := {}
Local cMsgInform := '*******Procesando******'
Local iQtdeMsgInform := 5

QOut("Gerando a Lista")
MsgLoad(cMsgInform,iQtdeMsgInform)
aMat := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)

aMatriz := aMat
QOut("Exibir a Lista")
MsgLoad(cMsgInform,iQtdeMsgInform)
ExibMatriz(aMatriz)

aMatriz := aMat
aMatriz := ASort(aMatriz)
QOut("Exibir a Lista emOrdem Crescente")
MsgLoad(cMsgInform,iQtdeMsgInform)
ExibMatriz(aMatriz)

aMatriz := aMat
aMatriz := ASort(aMatriz)
QOut("Exibir a Lista emOrdem Decrescente")
MsgLoad(cMsgInform,iQtdeMsgInform)
ExibMatInvert(aMatriz)

aMatriz := aMat
QOut("Pesquisar a Matriz")
MsgLoad(cMsgInform,iQtdeMsgInform)
PesqMat(aMatriz)

QOut("Calculando Soma e Media da Matriz")
MsgLoad(cMsgInform,iQtdeMsgInform)
SomaMediaMat(aMatriz)

QOut("Processando Maior e Menor Numero da Matriz")
MsgLoad(cMsgInform,iQtdeMsgInform)
MaiorMenorNumMat(aMatriz)

Qout("Embaralhano a Matriz")
MsgLoad(cMsgInform,iQtdeMsgInform)
iNumMinInform := 1
iNumMaxInfor := iQtdeGerInform
RandomMat(iQtdeGerInform,iNumMinInform,iNumMaxInfor,aMatriz)

QOut("Verificando Valores Repetidos na Matriz")
MsgLoad(cMsgInform,iQtdeMsgInform)

PesqMatPos(aMatriz)


Return Nil 

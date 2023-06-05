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


Function Main()
Local iQtdeGerInform := 8
Local iNumMinInform := 0
Local iNumMaxInfor := 100
Local aMat := {}
Local aMatriz := {}

QOut("Gerando a Lista")
aMat := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)

aMatriz := aMat
QOut("Exibir a Lista")
ExibMatriz(aMatriz)

aMatriz := aMat
aMatriz := ASort(aMatriz)
QOut("Exibir a Lista emOrdem Crescente")
ExibMatriz(aMatriz)

aMatriz := aMat
aMatriz := ASort(aMatriz)
QOut("Exibir a Lista emOrdem Decrescente")
ExibMatInvert(aMatriz)

aMatriz := aMat
QOut("Pesquisar a Matriz")
PesqMat(aMatriz)

QOut("Calculando Soma e Media da Matriz")
SomaMediaMat(aMatriz)

QOut("Processando Maior e Menor Numero da Matriz")
MaiorMenorNumMat(aMatriz)

Qout("Embaralhano a Matriz")
iNumMinInform := 1
iNumMaxInfor := iQtdeGerInform
RandomMat(iQtdeGerInform,iNumMinInform,iNumMaxInfor,aMatriz)

QOut("Verificando Valores Repetidos na Matriz")
PesqMatPos(aMatriz)


Return Nil 

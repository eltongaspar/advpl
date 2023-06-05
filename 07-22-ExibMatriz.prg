// Lista 07 - Exercicio 22
// Ler uma lista e por em ordem crescente 

Set Procedure to Lib_GeraNumAleatMinMax.prg
Set Procedure to Lib_ExibMatriz.prg

Function Main()
Local iQtdeGerInform := 12
Local iNumMinInform := 0
Local iNumMaxInfor := 1000
Local aMat := {}
Local aMatriz := {}

aMat := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)
aMat := ASort(aMat)

aMatriz := aMat
ExibMatriz(aMatriz)


Return Nil 

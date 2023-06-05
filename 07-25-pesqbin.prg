// Exercio 25
// Pesquisa Binaria e Normal em um Vetor de 100

Set Procedure to Lib_GeraNumAleatMinMax.prg
Set Procedure to Lib_PesqMatBinCaracter.prg

Function Main ()

Local iQtdeGerInform := 100
Local iNumMinInform := 0
Local iNumMaxInfor := 100
Loca aMatriz := {}

aMatriz := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)

PesqMatBinCaracter(aMatriz)


Return Nil

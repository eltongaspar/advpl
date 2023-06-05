//Lista 07 - Exercicio 09
//Criar um programa para ler uma Matrize Exibi na tela 

Set Procedure to Lib_GeraCaracterAleat.prg
Set Procedure to Lib_ExibMatriz.prg

Function Main
Local aMatriz := {}
Local iQtdeGerInform := 30
Local iMinInform := 1
Local iMinInform2 := 100
Local iMaxInfor := 101
Local iMaxInfor2 := 156

QOut("Gerando Matriz Aleatoria")

aMatriz := GeraCaracterAleat(iQtdeGerInform,iMinInform,iMinInform2,iMaxInfor,iMaxInfor2)

QOut("Exibi Matriz por Funcao")

ExibMatriz(aMatriz)


Return Nil 

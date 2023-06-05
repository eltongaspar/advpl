// Lista 07 - Exercicio 35

Set Procedure to Lib_GeraNumAleatMinMax.prg
Set Procedure to Lib_GeraMatM.prg

Function Main()

Local aA := {}
Local aB := {}
Local aC := {}
Local aM := {}
Local iQtdeGerInform := 10
Local iNumMinInform := 1
Local iNumMaxInfor := 1000

QOut("Matriz A")
aA := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)
QOut("Matriz B")
aB := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)
QOut("Matriz C")
aC := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)

aM := GeraMatM(aA,aB,aC,iQtdeGerInform)



Return Nil 

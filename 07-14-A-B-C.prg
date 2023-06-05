// Lista 07 - Execicio 14
//Ler Matriz A e B e C e A-B

Set Procedure to Lib_GeraNumAleatMinMax.prg
Set Procedure to Lib_ExibMatriz.prg

Function Main()

Local iQtdeGerInform := 20
Local iQtdeMatC := 0
Local iNumMinInform := 0
Local iNumMaxInfor := 1000
Local aA := {}
Local aB := {}
Local aC := {}
Local aMatriz := {}
Local iContC := 0
Local iTemp := 0

QOut("Gerando Matriz A")
aA := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)

QOut("Gerando Matriz B")
aB := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)


iContC := 1
iQtdeMatC:= iQtdeGerInform

QOut("Gerando Matriz C")
For iContC:=1 to iQtdeMatC
    iTemp := aA[iContC]-aB[iContC]
	AAdd(aC,[iContC])
	aC[Len(aC)] := iTemp  
                
Next


QOut("Matriz A")
aMatriz := aA
ExibMatriz(aMatriz)

QOut("Matriz B")
aMatriz := aB
ExibMatriz(aMatriz)

QOut("Matriz C")
aMatriz := aC
ExibMatriz(aMatriz)


Return Nil 

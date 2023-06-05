// Lista 07 - Execicio 17
//Ler Matriz A e B Somatorrio N 

Set Procedure to Lib_GeraNumAleatMinMax.prg
Set Procedure to Lib_ExibMatriz.prg

Function Main()

Local iQtdeGerInform := 10
Local iNumMinInform := 0
Local iNumMaxInfor := 1000
Local aA := {}
Local aB := {}
Local aMatriz := {}
Local iContA := 0
Local iContB := 0
Local iCont := 0
Local iContSomaA := 0
Local iTemp := 0
Local iBN := 0

QOut("Gerando Matriz A")
aA := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)


iContA := 1
iContB := Len(aA)

QOut("Gerando Matriz B")
For iContA:=1 to iContB

	iBN := Len(aB)+1
	iTemp := 0
	iContSomaA := 1
	While iContSomaA <= iBN
		iTemp := aA[iContSomaA] + iTemp
		iContSomaA++
	EndDo

	AAdd(aB,[iContA])
	aB[Len(aB)] := iTemp
                
Next


QOut("Matriz A")
aMatriz := aA
ExibMatriz(aMatriz)

QOut("Matriz B")
aMatriz := aB
ExibMatriz(aMatriz)


Return Nil 

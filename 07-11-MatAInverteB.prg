// Lista 07 - Execicio 11
//Ler Matriz A e Inverter em B

Set Procedure to Lib_GeraNumAleatMinMax.prg
Set Procedure to Lib_ExibMatriz.prg

Function Main()

Local iQtdeGerInform := 8
Local iNumMinInform := 0
Local iNumMaxInfor := 1000
Local aA := {}
Local aB := {}
Local aMatriz := {}
Local iContA := 0
Local iContB := 0
Local iCont := 0


QOut("Gerando Matriz A")
aA := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)


iContA := 1
iContB := Len(aA)
iCont :=  Len(aA)

QOut("Gerando Matriz B")
For iContA:=1 to iContB

	
    AAdd(aB,[iContA])
	aB[Len(aB)] := aA[iCont]
	iCont--
		
	

                
Next


QOut("Matriz A")
aMatriz := aA
ExibMatriz(aMatriz)

QOut("Matriz B")
aMatriz := aB
ExibMatriz(aMatriz)


Return Nil 

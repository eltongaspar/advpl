// Lista 07 - Execicio 10
//Ler Matriz A e B aadd em C

Set Procedure to Lib_GeraNumAleatMinMax.prg
Set Procedure to Lib_ExibMatriz.prg

Function Main()

Local iQtdeGerInform := 10
Local iQtdeMatC := 0
Local iNumMinInform := 0
Local iNumMaxInfor := 1000
Local aA := {}
Local aB := {}
Local aC := {}
Local aMatriz := {}
Local iContA := 0
Local iContB := 0
Local iContC := 0

QOut("Gerando Matriz A")
aA := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)

QOut("Gerando Matriz B")
aB := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)


iContA := 1
iContB := 1
iContC := 1
iQtdeMatC:= iQtdeGerInform

QOut("Gerando Matriz C")
For iContC:=1 to iQtdeMatC

	If iContA <= iQtdeGerInform
    	AAdd(aC,[iContC])
		aC[Len(aC)] := aA[iContA]
		iContA++
		
	EndIf 
	    
  	If iContB <= iQtdeGerInform
    	AAdd(aC,[iContC])
		aC[Len(aC)] := aB[iContB]
		iContB++
		
	EndIf 
	    
                
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

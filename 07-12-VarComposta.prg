// Lista 07 - Execicio 12
//Ler Matriz A e Inverter em A Composta.

Set Procedure to Lib_GeraNumAleatMinMax.prg
Set Procedure to Lib_ExibMatriz.prg

Function Main()

Local iQtdeGerInform := 8
Local iNumMinInform := 0
Local iNumMaxInfor := 1000
Local aA := {}
Local aMatriz := {}
Local iContA := 0
Local iContA2 := 0
Local iCont := 0
Local iTempA := 0
Local iTempA2 := 0
Local aTemp := {}

QOut("Gerando Matriz A")
aA := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)


iContA := 1
iContA2 := Len(aA)
iCont :=  Len(aA)

QOut("Gerando Matriz A Composta")
For iContA:=1 to iCont

	iTempA := aA[iContA]
	iTempA2 := aA[iContA2]

    AAdd(aTemp,[iContA,iContA2])
	aTemp[Len(aTemp)] := {iTempA,iTempA2}
		
	iContA2--	
	
                
Next



QOut("Matriz A")
aMatriz := aA
ExibMatriz(aMatriz)

QOut("Matriz A Composta")
aMatriz := aTemp
ExibMatriz(aMatriz)

Return Nil 

// Lista 07 - Execicio 14
//Ler Matriz A e B e C e A-B

Set Procedure to Lib_GeraNumAleatMinMax.prg
Set Procedure to Lib_ExibMatriz.prg

Function Main()

Local iQtdeGerInform := 0
Local iQtdeGerInformA := 10
Local iQtdeGerInformB := 15
Local iQtdeMatC := 25
Local iNumMinInform := 0
Local iNumMaxInfor := 1000
Local aA := {}
Local aB := {}
Local aC := {}
Local aMatriz := {}
Local iContC := 0
Local iContB := 0

iQtdeGerInform := iQtdeGerInformA
QOut("Gerando Matriz A")
aA := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)

iQtdeGerInform := iQtdeGerInformB
QOut("Gerando Matriz B")
aB := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)


iContC := 1

QOut("Gerando Matriz C(Atribuindo Dados Matirz A)")
For iContC:=1 to iQtdeGerInformA
    AAdd(aC,[iContC])
	aC[Len(aC)] := aA[iContC] 
                
Next

QOut("Gerando Matriz C(Atribuindo Dados Matirz B)")
iContB := 1
For iContC :=1 to iQtdeGerInformB
    AAdd(aC,[iContC])
	aC[Len(aC)] := aB[iContB] 
    iContB++
                
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

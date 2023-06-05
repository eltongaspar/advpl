// Lib para Somar Matriz 

Function SomaMediaMat(aMatriz)

Local aMatSomMed := {}
Local iCont := 0
Local iQtde := 0
Local rSoma := 0
Local rMedia := 0

aMatSomMed := aMatriz
iQtde := Len(aMatSomMed)
iCont := 1

While iCont <= iQtde
	rSoma := rSoma +aMatSomMed[iCont]
	iCont++
Enddo

rMedia := rSoma / iQtde

Qout(" A Soma Total e:  " + Str(rSoma))
Qout(" A Media e     :  " + Str(rMedia))
Qout("Numero de Posicoes na Matriz" + Str(iQtde))

Return (rMedia,rSoma)

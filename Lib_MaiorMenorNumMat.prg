// Lib para Maior e Menor Numero

Function MaiorMenorNumMat(aMatriz)

//Variavies 
Local aNum := {}
Local nCont := 0
Local nQtde := 0
Local rMaior := 0
Local rMenor := 0

aNum := aMatriz

rMaior := aNum[1]
rMenor := aNum[1]

nQtde := Len(aNum)
nCont:= 1
While nCont <= nQtde
    If aNum[nCont] > rMaior 
        rMaior := aNum[nCont]
    EndIf 

     If aNum[nCont] < rMenor 
        rMenor := aNum[nCont]
    EndIf     
 nCont++
Enddo


QOut("Maior > Num:  " + Str(rMaior))
QOut("Menor < Num:  " + Str(rMenor))

Return (rMaior,rMenor)

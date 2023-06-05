// Exercicio 42 
// Maior menos numero 3

Function Main 

//Variavies 
Local aNum := {0,0,0,}
Local nCont := 0
Local rMaior := 0
Local rMenor := 0

//Informacao
Accept("Informe numero 1:  ") to aNum[1]
Accept("Informe numero 2:  ") to aNum[2]
Accept("Informe numero 3:  ") to aNum[3]

aNum[1] := Val(aNum[1])
aNum[2] := Val(aNum[2])
aNum[3] := Val(aNum[3])

rMaior := aNum[1]
rMenor := aNum[1]

nCont:= 1
While nCont <= 3
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

Return Nil

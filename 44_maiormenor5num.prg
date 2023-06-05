// Exercicio 41 
// Maior e menor numero 4 

Function Main 

//Variavies 
Local aNum := {0,0,0,0,0}
Local nCont := 0
Local rMaior := 0
Local rMenor := 0

//Informacao
Accept("Informe numero 1:  ") to aNum[1]
Accept("Informe numero 2:  ") to aNum[2]
Accept("Informe numero 3:  ") to aNum[3]
Accept("Informe numero 4:  ") to aNum[4]
Accept("Informe numero 5:  ") to aNum[5]


aNum[1] := Val(aNum[1])
aNum[2] := Val(aNum[2])
aNum[3] := Val(aNum[3])
aNum[4] := Val(aNum[4])
aNum[5] := Val(aNum[5])

rMaior := aNum[1]
rMenor := aNum[1]

nCont :=1
While nCont <= 5
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

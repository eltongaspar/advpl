// Exercicio 41 
// Maior numero 3

Function Main 

//Variavies 
Local aNum := {0,0,0}
Local nCont := 0
Local rMaior := 0

//Informacao
Accept("Informe numero 1:  ") to aNum[1]
Accept("Informe numero 2:  ") to aNum[2]
Accept("Informe numero 3:  ") to aNum[3]

aNum[1] := Val(aNum[1])
aNum[2] := Val(aNum[2])
aNum[3] := Val(aNum[3])


nCont := 1
While nCont <=  3
    If aNum[nCont] > rMaior 
        rMaior := aNum[nCont]
    EndIf 
 nCont++
Enddo


QOut("Maior > Num:  " + Str(rMaior))

Return Nil



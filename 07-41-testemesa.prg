// Lista 07 - Exercicio 41
//Teste de mesa 

Function Main()
Local aMat:= {{"O","Q","*","I"},{"E","*","E","S"},{"R","E","U","T"},{"A","*","*","S"}}
Local iI := 0
Local iJ := 0
Local cAux := ""

Wait("Criando Matriz Multi Dimensional 4x4")
QOUT(hb_valtoexp(aMat))

For iI:=1 to 3
    Wait("Invertendo posicoes da Matriz Nivel 01" + Str(iI))
        For iJ:= (iI+1) to 4
            Wait("Invertendo posicoes da Matriz Nivel 02" + Str(iJ))
            cAux := aMat[iI,iJ]
            aMat[iI,iJ] := aMat[iJ,iI]
            aMat[iJ,iI] := cAux
        Next 

Next 
Wait("Ajustes das ultimas posicoes")
cAux := aMat[1,1]
aMat[1,1] := aMat[4,4]
aMat[4,4] := cAux
cAux := aMat[2,2]
aMat[2,2] := aMat[3,3]
aMat[3,3] := cAux

Wait("Matriz apos as inversoes de posicoes")
QOUT(hb_valtoexp(aMat))
Return Nil 

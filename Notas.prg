Function Main()
//Variaveis 
local cNota1 := 0
local cNota2 := 0
local cNota3 := 0
local cNota4 := 0
local nMedia := 0
local cVAriavel1 := "Elton"
local CVariavel2 := "Moura"

//Rotina de leitura de notas
ACCEPT "Digite a primeira Nota: " To cNota1
ACCEPT "Digite a segunda Nota: " To cNota2
ACCEPT "Digite a terciera Nota: " To cNota3
ACCEPT "Digite a quarta Nota: " To cNota4

//Calculo Media Nota
nMedia:= (Val(cNota1)+Val(cNota2)+Val(cNota3)+Val(cNota4))/4

QOUT(cNota1)
QOut(cNota2)
QOut(cNota3)
QOut(cNota4)
QOut(nMedia)
Qout (cVariavel1+cVariavel2)

If nMedia >= 7
    QOut ("Aprovado com Media"+Str(NMedia))
Else 
    QOut ("Reprovado com Media"+Str(nMedia))
endif

RETURN .t.

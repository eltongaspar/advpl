// Exercicio 49
// Ler tres vak=lores e mostrar o maior >

Function Main()

// Variaveis
Local aNum := {0,0,0,0}
Local aMaior := {0,0,0,0}

//Informacao
Accept("Informe numero 01:  ") to aNum[1]
Accept("Informe numero 02:  ") to aNum[2]
Accept("Informe numero 03:  ") to aNum[3]
Accept("Informe numero 04:  ") to aNum[4]

//Converter
aNum[1] := Val(aNum[1])
aNum[2] := Val(aNum[2])
aNum[3] := Val(aNum[3])
aNum[3] := Val(aNum[4])

ASORT(aNum)

//Exibir 
QOut("Ordem Crescente dos numeros:  ")
QOut(Str(aNum[1]))
QOut(Str(aNum[2]))
QOut(Str(aNum[3]))
QOut(Str(aNum[4]))

Return Nil

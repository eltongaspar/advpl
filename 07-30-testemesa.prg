// Lista 07 - Exercicio 30
// Testes de mesas

Function Main()
Local aAnag := {}
Local iI := 1
Local cAux := ""



Wait("Atribuindo variavel ao Texto AMOR")
aAnag := "AMOR"

Wait("Aqui a Matriz Quebra devido aos contadores de posicoes estarem fora ordem")
Wait("Contador Inicial Difere do Contador Final")

For iI:= 1 to 4
    Aux := aAnag[iI]
    aAnag[iI] := Anag[5-iI]
    aAnag[5-iI] := cAux

Next 




Return Nil 

// Exercicio 30
// Ler numeros de 1 a 9

Function Main()

// Variaveis
Local iVal := 0

Accept ("Informe um mumeto > 0 e < 9: ") to iVal
iVal := Val(IVal)


While iVal < 0 .or. iVal >= 9 
    Accept ("***Atencao*** Favor informa um numero > 0 e < 9: ") to iVal
    iVal := Val(IVal)


Enddo
QOut ("P)arabens, O numero informado esta correto!!!!!" + Str(iVal))


Return Nil

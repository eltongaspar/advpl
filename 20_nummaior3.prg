// Exercicio 20
//  Ler valor não > 3

Function Main()

// Variaveis 
Local iNum := 777


//Condicao para repeticao 
While iNum > 3 
    // Informacao
    Accept ("Informe um numero menor que 3:  ") to iNum
    iNum := Val (iNum)

    IF iNum > 3
        QOut ("Informar numero menor que 3:")
    Else
        QOut ("Correto")
    EndIf
Enddo

//Exibir
Wait ("Fim") 

Return Nil


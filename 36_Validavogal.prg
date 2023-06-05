// Exercicio 36 
// Verificar se e Vogal

Function Main()

Local cValor := ""
Local cAsc := ""

Accept("Informe uma letra:  ") to cValor
cAsc := ASC(cValor)

Do Case 
    Case cAsc = 65
    QOut("A sua letra é uma Vogal")
    Case cAsc = 97
    QOut("A sua letra é uma Vogal")
    Case cAsc = 69
    QOut("A sua letra é uma Vogal")
    Case cAsc = 101
    QOut("A sua letra é uma Vogal")
    Case cAsc = 73
    QOut("A sua letra é uma Vogal")
    Case cAsc = 105
    QOut("A sua letra é uma Vogal")
    Case cAsc = 79
    QOut("A sua letra é uma Vogal")
    Case cAsc = 111
    QOut("A sua letra é uma Vogal")
    Case cAsc = 85
    QOut("A sua letra é uma Vogal")
    Case cAsc = 117
    QOut("A sua letra é uma Vogal")

    
   Otherwise
   QOut ("Sua letra nao e Vogal")

ENDCASE



Return Nil 


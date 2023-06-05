// Exercicio 38
// Verificar se e numero , caracter ou simbolo 

Function Main()

// Variaveis 
Local cValor := 0
Local lStr := .F.
Local lNum := .F.
Local lSimb := .F.

// Informacao 
Accept ("Informe o valor:  ") to cValor

// Analise String
lStr := ISALPHA(cValor)
//Analise Numero
lNum := ISDIGIT(cValor)

If lStr = .T.
    Qout("Dados tipos String")
EndIf

If lNum = .T.
    Qout("Dados tipos Numerico")
EndIf

If lStr = .F. .and. lNum = .F.
    Qout("Dados tipos Simbolo")
EndIf


Return Nil 


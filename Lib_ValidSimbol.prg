// Verificar de Simbolo

Function ValidSimbol(cSimbolInform)

// Variaveis 
Local cValor := 0
Local lStr := .F.
Local lNum := .F.
Local lSimbol := .F.

// Informacao 

While lSimbol = .F.
    Accept ("Informe um Simbolo:  ") to cValor

    // Analise String
    lStr := ISALPHA(cValor)
    //Analise Numero
    lNum := ISDIGIT(cValor)

    If lStr = .F. .and. lNum = .F.
        lSimbol := .T.
    EndIf

Enddo

QOut("*******Parabens!!! Caracter Informado e um Simbolo!!!******* " + cValor)

Return (lSimbol)


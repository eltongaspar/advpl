// ToLower 
// Converter Letras maisculas em minusculas 

Function ToLowerMinusc(cTextInform)

Local cText := ""

cText := cTextInform

Accept("Informe o Texto para Conversao de Letras Minusculas:  ") to cText

cText := Lower(cText)

QOut(cText)


Return (cText)


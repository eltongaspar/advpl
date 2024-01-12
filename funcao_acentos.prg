// Retirar caracteres especiais 

Set Procedure to Lib_Function_Acento.prg

Function Main ()
Local cTexto := ''

Accept ("Informe o Texto:  ") to cTexto

Function_Acento( cTexto )

QOut(cImpLin)


Return Nil

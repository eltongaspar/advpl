// Exercicio 16 
// Informar se caracter e Letra, Numero ou Simbolo
// Converter letra maiscula em minuscula 
// Invert dados

Set Procedure to Lib_ValidLetra.prg
Set Procedure to Lib_ValidNum.prg
Set Procedure to Lib_ValidSimbol.prg
Set Procedure to Lib_ToLowerMinusc.prg
Set Procedure to Lib_InvertVar.prg

Function Main()
Local cCaractInform := ""
Local rNumInform := ""
Local cSimbolInform := ""
Local cTextInform := ""
Local cAInform := ""
Local cBInform := ""

QOut("Validador de Letras")
ValidLetra(cCaractInform)

QOut("Validador de Numero")
ValidNum(rNumInform)

QOut("Validador de Simbolo")
ValidSimbol(cSimbolInform)

QOut("Converter Letras Maisculas em Minusculas")
ToLowerMinusc(cTextInform)

QOut("Inverte Variaveis")
InvertVar(cAInform,cBInform)




Return Nil 

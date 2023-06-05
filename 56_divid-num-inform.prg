//Exercicio 55
// user informa numero para divisao e um numera maximo para analisar numeros divisiveis 

SET PROCEDURE TO Lib_ResulRestDivid.prg
Function Main()

Local iMaxInform := 0
Local iDivInform:= 0
Local aExib := {}

// Informacao
Accept ("Informe o numero Maximo para calculo Multiplos:  ") to iDivInform
Accept ("Informe o numero para calculo dos Multiplos:  ") to iMaxInform


aExib := Lib_ResulRestDivid(iMaxInform, iDivInform)



Return Nil 

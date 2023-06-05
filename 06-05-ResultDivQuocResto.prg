//Exercicio 55
// user informa numero para divisao e um numera maximo para analisar numeros divisiveis 

SET PROCEDURE TO Lib_ResultDivQuocientRest.prg

Function Main()

Local iDividendoInfomr := 0
Local iDivisorInform:= 0
Local iRestInfomr := 0
Local iQuocientInform := 0

// Informacao
Accept ("Informe o numero Dividendo para a divisao:  ") to iDividendoInfomr
Accept ("Informe o numero Divisor para a divisao:  ") to iDivisorInform


ResultDivQuocientRest(iDividendoInfomr, iDivisorInform,iRestInfomr,iQuocientInform)


Return Nil 

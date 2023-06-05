// Exercicio 78
//Calculo Numero Primo 

SET PROCEDURE TO Lib_ValidNum.prg
SET PROCEDURE TO Lib_CalcNumPrimo.prg

Function Main()

Local rNumInform := 0



Accept("Informe um numero para Calculo de Numero Primo:  ") to rNumInform


rNumInform := ValidNum(rNumInform)



CalcNumPrimo(rNumInform)

Return Nil 



// Exercicio 76 
// Calculo de Z A,B,C  
//Usuario Informa Z

SET PROCEDURE TO Lib_CalcZ.prg

Function Main()
Local iQtdeZInform := 0

Accept("Informe o Valor de Z:  ") to iQtdeZInform
iQtdeZInform := Val(iQtdeZInform)
CalcZ(iQtdeZInform)



Return Nil 





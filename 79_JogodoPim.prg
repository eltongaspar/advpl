// Exercicio 79 
// Jogo do PIm, informar PIM nos numeros informados 

SET PROCEDURE TO Lib_ValidNum.prg
SET PROCEDURE TO Lib_Pim.prg

Function Main()

Local rNumInform := 0
Local rNumMaxInform := 60

Accept("Informe um valor para o Jogo do Pim  ") to rNumInform

rNumInform := ValidNum(rNumInform)

PIM(rNumInform, rnumMaxInform)

Return Nil 















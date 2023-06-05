// Lib Calcula Dobro de um numero informado 

SET PROCEDURE TO Lib_ValidNum.prg

Function CalDobro()
Local rNumInform := 0
Local rResult := 0
Local rDob := 2

Accept("Informe um valor para calcular o dobro (2x):  ") to rNumInform


rNumInform := ValidNum(rNumInform)

rResult := rNumInform*rDob

QOut("O dobro do numero e: " + Str(rResult))


Return (rResult)

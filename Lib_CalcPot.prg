// Calculo de um numero na potencia informada

SET PROCEDURE TO Lib_ValidNum.prg


Function CalcPot()
Local rBase := 0
Local rPot := 0
Local rResult := 0
Local rNumInform := 0


Accept("Informe a Base para Calculo da Potencia:  ") to rNumInform
rBase := ValidNum(rNumInform)

Accept("Informe a Potencia para Calculo da Potencia:  ") to rNumInform
rPot := ValidNum(rNumInform)


rResult := (rBase^rPot)

QOut("O REsultado e:  " + Str(rResult))

Return (rResult)

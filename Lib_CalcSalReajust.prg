// Lib para Calculo de Reajuste de salario 

SET PROCEDURE TO Lib_ValidNum.prg

Function CalcSalReajust()

Local rSalario := 0
Local rPercent := 0
Local rSalReajust := 0
Local rNumInform

Accept("Informe o Salario Atual:  ") to rNumInform
rSalario := ValidNum(rNumInform)

Accept("Informe o Percentual de Reajuste:  ") to rNumInform
rPercent := ValidNum(rNumInform)

rSalReajust := rSalario+(rSalario*(rPercent/100))

QOut("Salario Reajustado:  "  + Str(rSalReajust))

Return (rSalReajust)


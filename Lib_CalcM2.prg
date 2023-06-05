// Calculo M2 de uma area informada 

SET PROCEDURE TO Lib_ValidNum.prg

Function CalcM2()

Local rArea1 := 0
Local rArea2 := 0
Local rM2 := 0
Local rNumInform := 0

QOut("Calculo de M2 de uma area")

Accept("Informe Area 01:  ") to rNumInform
rArea1 := ValidNum(rNumInform)

Accept("Informe Area 02:  ") to rNumInform
rArea2 := ValidNum(rNumInform)

rM2 := rArea1 * rArea2

QOut("A area tem  Total de M2:  " + Str(rM2))

Return (rM2)



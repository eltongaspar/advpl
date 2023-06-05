// Lib para calculo de sucessor e antecessor informados

SET PROCEDURE TO Lib_ValidNum.prg

Function NumAntSuc()
Local rNum := 0
Local rAnt := 0
Local rSuc := 0
Local rNumInform := 0

QOut("Rotina para Calculo de Numero Antecessor e Sucessor")

Accept("Informe o Numero:  ") to rNumInform
rNum := ValidNum(rNumInform)

rAnt := rNum -1
rSuc := rNum +1

QOut("Numero Antecessor:  " + Str(rAnt))
QOut("Numero Sucessor:  " + Str(rSuc))


Return (rAnt,rSuc)

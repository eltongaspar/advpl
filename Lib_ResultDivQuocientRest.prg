// Lib Calcula o Quocinete e Resto de uma divisão com numeros inteiros

Function ResultDivQuocientRest(iDividendoInfomr, iDivisorInform,iRestInfomr,iQuocientInform)

Local iDivisor := 0
Local iDividendo := 0
Local iRest := 0
Local iQuocient := 0

iDividendo := Val(iDividendoInfomr)
iDivisor := Val(iDivisorInform)

iRest := Mod(iDividendo,iDivisor)
iQuocient := iDividendo/iDivisor

iRestInfomr := iRest 
iQuocientInform := iQuocient


QOut("O Quocinete da divisao e:  " + Str(iQuocient))
QOut("O Resto da Divisao e:  " + Str(iRest))




Return (iQuocient,iRest)

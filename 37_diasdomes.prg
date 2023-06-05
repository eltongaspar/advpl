// /exercicio 37
// Quantos dias tem no mes 

Function Main()

Local cDTDigit := "" + SPACE(2)
Local iDiasMes := 0
Set(_SET_DATEFORMAT,"DD/MM/YYYY")

Accept ("Informe um Mes para Retornar o ultima dia:  ") to cDTDigit
cDTDigit := Val(cDTDigit)
iDiasMes := LastDayOM(cDTDigit)

Qout(" total de dias do mes e:  "+ Str(iDiasMes))

Return Nil 

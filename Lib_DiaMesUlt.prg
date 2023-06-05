// Lib para Retornoar o ultimo dia do mes de uma data informada 


Function DiaMesUlt()


Local dData := CTOD("")
Local iDiaMesUlt := 0
Set(_SET_DATEFORMAT,"DD/MM/YYYY")

Accept("Informe a Data para Informar o Total de dias do Mes  ") to dData

iDiaMesUlt := LastDayOM(CTOD(dData))

QOut("Total de dias do Mes e:  " + Str(iDiaMesUlt))


Return Nil 

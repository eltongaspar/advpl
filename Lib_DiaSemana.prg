// Lib para retorna o dia da Semana

Function DiaSemana()

Local dData := CTOD("")
Local iDiaSemana := 0
Local cDiaSemanaText := ""
Set(_SET_DATEFORMAT,"DD/MM/YYYY")

Accept("Informe a Data para Informar o dia da Semana") to dData

iDiaSemana := Dow(CTOD(dData))
cDiaSemanaText := CDow(CTOD(dData))

QOut("Dia da Semana Numero:  " + Str(iDiaSemana))
QOut("Dia da Semana Texto:  " + cDiaSemanaText)

Return Nil 

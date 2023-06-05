// Data dia indicar numero do dia no ano
// Verificar se ano é bissexto

Function DiaAno()
Local cDia := "" + Space(2)
Local cMes := "" + Space(2)
Local cAno := "" + Space(4)
Loca ddata := Ctod("")
Local lBis := .T.
Local iDiaAno := 0
Local sAnoText := ""

Set(_SET_DATEFORMAT,"DD/MM/YYYY")

Accept("Informe do Dia:  ") to cDia
Accept("Informe do Mes:  ") to cMes
Accept("Informe do Ano:  ") to cAno

//Converter String em Data
dData := Ctod(cDia + "/" + cMes + "/" + cAno)

//Valida ano Bissexto
lBis := ISLeap(dData)
//Atribui o Texto ao Tipo de Ano
If lBis = .T.
    sAnoText := "Ano Bissexto"
Else 
    sAnoText := "Ano Normal"
EndIf    

//Valida dia Ano
iDiaAno := DOY(dData)

QOut("o numero do dia do ano e:  " + Str(iDiaAno))
QOut(sAnoText)

Return Nil

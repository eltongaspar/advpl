// Verificador de Numeros

Function ValidNum(rNumInform)
Local rNum := 0
Local lValidNum := .F.
Local cTemp := ""


cTemp := rNumInform


lVAlidNum := IsDigit(cTemp)



While lVAlidNum = .F.
	QOut("*******Caracter Informado nao e Numero!!!*******  " + (cTemp))
	Accept("Informe um Numero:  ") to cTemp
	lVAlidNum := IsDigit(cTemp)

Enddo 
QOut("*******Parabens!!! Caracter Informado e um Numero!!!*******  " + (cTemp))

rNum := Val(cTemp)


Return (rNum)


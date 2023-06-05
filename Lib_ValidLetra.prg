// Verificador de String

Function ValidLetra(cCaractInform)
Local cCaract := ""
Local lValidLetra := .F.
Local iCont := 1

cCaract := cCaractInform

Accept("Informe uma Letra:  ") to cCaract

lVAlidLetra := IsAlpha(cCaract)



While lVAlidLetra = .F.
	QOut("*******Caracter Informado nao e Letra While!!!*******  " + cCaract)
	Accept("Informe uma Letra While:  ") to cCaract
	lVAlidLetra := IsAlpha(cCaract)

Enddo 
QOut("*******Parabens!!! Caracter Informado e uma Letra!!!*******  " + cCaract)

If lVAlidLetra = .F.
	For iCont := 1  To 1
		QOut("*******Caracter Informado nao e Letra For!!!******* " + cCaract)
		Accept("Informe uma Letra For:  ") to cCaract
		lVAlidLetra := IsAlpha(cCaract)

		If lVAlidLetra = .T.
			iCont := 2
		Else 
			iCont--
		EndIf
	EndFor
EndIf

QOut("*******Parabens!!! Caracter Informado e uma Letra!!!******* " + cCaract)



Return (cCaract)


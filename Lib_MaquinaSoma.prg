// Maquina de Soma 

Function MaquinaSoma()

Local aNums := {}
Local rTotalSoma := 0
Local cEnd := ""
Local lValidNum := .F.
Local iCont := 1
Local iQtdeNum := 0
Local rNumDigit:= 0

While cEnd <> "0" //.or. lValidNum = .F.
	QOut ("Informe 0(Zero) para Sair")
	Accept ("Informe um valor para a soma:  ") to (rNumDigit)
	
	cEnd := rNumDigit

	If cEnd = "0"
		
		BREAK
	EndIf



	lValidNum := ISDIGIT(rNumDigit)//Analise Numero
	rNumDigit := Val(rNumDigit)

	If lValidNum = .T. .and. rNumDigit <> 0
		AAdd(aNums,[iCont])
   	 	aNums[Len(aNums)] := rNumDigit
		iCont++
	EndIf 

	iQtdeNum := Len(aNums)
	iCont:= 1

	While iCont <= iQtdeNum
		rTotalSoma := rTotalSoma + (aNums[iCont])
		iCont++
	Enddo
	QOut("Valor Total" + Str(rTotalSoma))
Enddo

Return (rTotalSoma)

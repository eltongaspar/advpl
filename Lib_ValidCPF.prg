// Validador de CPF

Function ValidCPF()
Local cCPFDigit := + Space(11)
Local mCPF := {}
Local lValid := .F.
Local iQtdeDig := 11
Local iValidQtdeDig := 0
Local iCont := 0
Local iCont2 := 0
Local lValidDigit:= .F.
Local iValidDigit1 := 0
Local iValidDigit2 := 0
Local lDig1 := .F.
Local lDig2 := .F.

While iValidQtdeDig <> iQtdeDig
	Accept("Informe o  CPF:  ") to cCPFDigit
	iValidQtdeDig := Len(cCPFDigit)
Enddo

iCont := 1
While iCont <= iQtdeDig
	lValidDigit :=  IsDigit(SubStr(cCPFDigit,iCont,1))

	IF lValidDigit = .T.
		AAdd(mCPF,[iCont])
		mCPF[Len(mCPF)] := Val(SubStr(cCPFDigit,iCont,1))
		
	EndIf

	IF lValidDigit = .F.
		AAdd(mCPF,[iCont])
		mCPF[Len(mCPF)] := 0
	EndIf 

	iCont++

Enddo 


// Valida Primeiro digito 
iCont := 1
iQtdeDig := 9
iCont2 := 10

While iCont <= iQtdeDig
	iValidDigit1 := iValidDigit1+(mCPF[iCont])*iCont2
	iCont++
	iCont2--
Enddo 

iValidDigit1 := (iValidDigit1*10)
iValidDigit1 := Mod(iValidDigit1,11)

IF iValidDigit1 = 10
	iValidDigit1 := 0
EndIf


IF iValidDigit1 = mCPF[10]
	lDig1 := .T.
EndIf 

// Valida Segundo digito 
iCont := 1
iQtdeDig := 10
iCont2 := 11

While iCont <= iQtdeDig
	iValidDigit2 := iValidDigit2+(mCPF[iCont])*iCont2
	iCont++
	iCont2--
Enddo 

iValidDigit2 := (iValidDigit2*10)
iValidDigit2 := Mod(iValidDigit2,11)

IF iValidDigit2 = 10
	iValidDigit2 := 0
EndIf


IF iValidDigit2 = mCPF[11]
	lDig2 := .T.
EndIf 


Qout(lDig1)
Qout(lDig2)

QOut("CPF")
QOUT(hb_valtoexp(mCPF))

If lDig1 = .T.
	Qout("*******Digito Validador 1 OK******")
EndIF 

If lDig1 = .F.
	QOut("xxxxxxxxDgito Validaro 1 Nao Conferexxxxxx")
EndIf 

If lDig2 = .T.
	Qout("*******Digito Validador 2 OK******")
EndIf 

If lDig2 = .F.
	QOut("xxxxxxxxDgito Validar 2 Nao Conferexxxxxx")
EndIf 

If lDig1 = .T. .and. lDig2 = .T.
	QOut("******CPF Validado******")
EndIf 

If  lDig1 = .F. .or. lDig2 = .F.
	QOut("******CPF Invalido******")
EndIf 




Return (mCPF,lValid)

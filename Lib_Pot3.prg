// Funccao Potencia 3 de 0 a 15


Function Potencia3(iPotInform,iQtdeBaseInfor)

Local iPot := 3
Local iBase := 0
Local mResult := {}
Local iCont := 1
Local iQtdeBase := 15
Local iTemp := 0

iCont:= 1
iBase := 0
While iCont <= iQtdeBase
	AAdd(mResult,[iCont])
	mResult[Len(mResult)] := (iBase^iPot)
	iCont++

Enddo

iCont:= 0
iBase := 0
While iCont <= iQtdeBase
	iTemp := (iBase^iPot)
	QOut("Base  " + Str(iBase) + "  Potencia  " + Str(iPot) + "  Resultado  " + Str(iTemp))
	iCont++
	iBase++
Enddo

Return (mResult)

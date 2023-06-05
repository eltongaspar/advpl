// Calculo Finobocci

Function Fibonacci()
Local mFibonacci := {0}
Local iNumAtual := 1
Local iNumAnt := 0
Local iResultFibonacci := 0
Local iNumFibonacci := 0
Local iTotalFibonacci := 0
Local lValidNumInt := .F.
Local iCont:= 2
Local iCont2 := 0

While lValidNumInt = .F.
Accept("Informe um numero inteiro para calcular o Finabocci  ") to iNumFibonacci
    lValidNumInt := ISDIGIT(iNumFibonacci)
ENDDO

iNumFibonacci := Val(iNumFibonacci) -1
While iCont2 < iNumFibonacci
	iResultFibonacci := iNumAnt + iNumAtual
	AAdd(mFibonacci,[iCont])
    mFibonacci[Len(mFibonacci)] := iResultFibonacci
	iTotalFibonacci := iTotalFibonacci + iResultFibonacci
    
	iNumAnt := iNumAtual
	iNumAtual := iResultFibonacci
	iCont++
	iCont2++
ENDDO

iTotalFibonacci:= iTotalFibonacci + 1
QOut("Resultado  " + Str(iTotalFibonacci))
QOUT(hb_valtoexp(mFibonacci))

Return (mFibonacci)

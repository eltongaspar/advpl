// Calculo de Fatorial de um Num Informado

Function Fatorial()

Local iNumFat := 0
Local iResulFat := 1
Local iCont := 1
Local iCont2 := 0
Local lValidNumInt := .F.

While lValidNumInt = .F.
Accept("Informe um numero inteiro para calcular seu Fatorial ") to iNumFat
    lValidNumInt := ISDIGIT(iNumFat)
ENDDO

iNumFat := Val(iNumFat)
iCont2 := iNumFat

While iCont < iNumFat
    iResulFat := (iResulFat*iCont2)
    Qout(iResulFat)
    iCont++
    iCont2--
ENDDO

QOut("Numero Informado  " + Str(iNumFat) + "  Resultado Fatorial  " + Str(iResulFat))

Return (iResulFat)



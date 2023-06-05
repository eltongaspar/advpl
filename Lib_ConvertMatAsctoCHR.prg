// Lib para Conversao Asc em Caractrer 

Function ConvertMatAsctoCHR(aMatriz,iQtdeColInform,iQtdelinInform)

Local aConvertAscCHR := {}
Local cTemp := ""
Local iCont := 0
Local iCont2 := 0
Local iQtdeCaract := 0
Local iQtdeCol := iQtdeColInform
Local iQtdeLin := iQtdeLinInform
Local aTemp := {}

aTemp := aMatriz
iQtdeCaract := Len(aConvertAscCHR)

iCont := 1

While iCont <= iQtdeLin

    iCont2 := 1
    While iCont2 <= iQtdeCol
    cTemp := aTemp[iCont,iCont2]
    cTemp := CHR(cTemp) 
    AAdd(aConvertAscCHR,[iCont,iCont2])
   	aConvertAscCHR[Len(aConvertAscCHR)] :=cTemp
	iCont2++
    ENDDO
    iCont++
    

ENDDO

QOut("Resultado ASC")
QOUT(hb_valtoexp(aConvertAscCHR))


Return (aConvertAscCHR)

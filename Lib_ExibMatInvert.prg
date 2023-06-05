// Funcao para inverter uma Matriz

Function ExibMatInvert(aMatriz)

Local aMatInvert := aMatriz
Local iQtde := 0
Local iCont := 0
Local cInform := ""


iCont := Len(aMatInvert)
iQtde := Len(aMatInvert)

While iQtde > 0
    QOut(aMatInvert[iCont])
    iQtde--
    iCont--
Enddo



Return (aMatInvert)

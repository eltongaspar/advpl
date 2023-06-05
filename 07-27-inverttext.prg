// Lista 07 - Exercicio 27 

Set Procedure to Lib_ListaMatrizInversa.prg

Function Mai()
Local aMat := {} 
Local aMatRevert := {} 
Local cText := ""
Local cText2 := ""
Local iQtde := 0
Local iCont := 1
Local iCont2 := 1

Accept("Informe a palavra:  ") to cText
Wait("Lembre-se que para frases os espacos em branco podem mudar o resultado")

iQtde := Len(cText)
Qout(iQtde)

While iCont <= iQtde 

    AAdd(aMat,[iCont])
    aMat[Len(aMat)] := SUBSTR(cText,iCont,1)
    iCont++
   
Enddo

QOut("Palavra Informada:")
QOUT(hb_valtoexp(aMat))

iQtde := Len(cText)

iCont := Len(aMat)
iCont2 := 1
iQtde := 1
While iCont >= iQtde 

    AAdd(aMatRevert,[iCont2])
    aMatRevert[Len(aMatRevert)] := SUBSTR(cText,iCont,1)
    cText2 := cText2+SUBSTR(cText,iCont,1)
    iCont--
    iCont2++
   
Enddo
iCont2 := Len(aMatRevert)

QOut("Palavra Informada:")
QOUT(hb_valtoexp(aMat))
QOut(cText)
QOut("Palavra Reversa:")
QOUT(hb_valtoexp(aMatRevert))
QOut(cText2)

if cTExt = cText2 
    QOut("*******A palavra e um palindromo*******")
Else 
    QOut("xxxxxxxA palavra nao e palindromoxxxxxxx")
EndIf

Return Nil 

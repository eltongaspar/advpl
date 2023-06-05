// Lib para contar retornar o tamanho de uma String

Function ContString()
Local cText := ""
Local iCont := 0
Local iCont2 := 0
Local iCont3 := 0
Local cCaract := ""
Local cPesq := ""
Local iPesqPos := 0
Local iManipTextIni := 0
Local iManipTextQtde := 0
Local cManipText := ""
Local cTextInvert := ""
Local cText2 := ""
Local cTemp := ""
Local cDel := ""
Local cIns := ""
Local iPos := 0
Local iIni := 0

Accept("Informe o Texto:  ") to cText
Accept("Informe um Caracter para Busca:  ") to cPesq
Accept("Informe uma Posicao Inicial :  ") to iManipTextIni
Accept("E a qtde de casas:  ") to iManipTextQtde
cText := cText + "."
iCont := 1

While cCaract <> "."
    cCaract := SubStr(cText,iCont,1)

 If cCaract = cPesq
        iPesqPos := iCont
    EndIf
   
    If cCaract <>"."
        iCont++
    EndIf 
   
Enddo
iManipTextIni := Val(iManipTextIni)
iManipTextQtde := Val(iManipTextQtde)

cTextInvert := Space(iCont)
iCont3 := iCont
While iCont2 < iCont

    cTextInvert := cTextInvert + SubStr(cText,iCont3,1)
    iCont3--
    iCont2++


Enddo


QOut("Palavre Invertida  " + (cTextInvert))

cManipText := SubStr(cText,iManipTextIni,iManipTextQtde)

QOut("Total de Caractere:  " + Str(iCont-1))
QOut("Resultado Pesquisa(Posicao):  " + Str(iPesqPos))
QOut("Resultado Texto Manipulado:  " + (cManipText))

Accept("Informe uma letra para Retorno em Maiscula  ") to cText2 
cText2 := Upper(cText2)
QOut("Letra Maiscula:  " + (cText2))

Accept("Informe uma letra para Retorno em Minuscula  ") to cText2 
cText2 := Lower(cText2)
QOut("Letra Minuscula:  " + (cText2))


Accept ("Informe um Caracter para ser Deletado  ") to cDel
cTemp := cText 
cTemp :=  STRTRAN(cText,cDel,"")
QOut("Texto com Delecao:  " + (cTemp))

Accept ("Informe um Caracter para ser Inserido  ") to cIns
Accept ("Informe em qual Casa deve ser inserido  ") to iPos
cTemp := cText 
iPos := Val(iPos)
cTemp :=  STUFF( cTemp,iPos,0,cIns)
QOut("Texto com Insercao:  " + (cTemp))

Accept ("Informe um Caracter para ser Inserido a Esquerda  ") to cIns
cTemp := cText 
iPos := 1
cTemp :=  STUFF( cTemp,iPos,0,cIns)
QOut("Texto com Insercao:  " + (cTemp))

Accept ("Informe um Caracter para ser Inserido a Direita  ") to cIns
cTemp := cText 
iPos := Len(cTemp)
cTemp :=  STUFF( cTemp,iPos,0,cIns)
QOut("Texto com Insercao:  " + (cTemp))

QOut("Retinado Todos Espaços em Branco")
cTemp := AllTrim(cText)
QOut(cTemp)


Accept ("Informe um Caracter para Alterar todas letras  ") to cIns
cTemp := cText 
iPos := Len(cText)
iIni := 1
cTemp :=  STUFF( cTemp,iIni,iPos,cIns)
QOut("Texto com Todas Letras Trocadas:  " + (cTemp))


Return (iCont)

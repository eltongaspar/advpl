// Lib para armazenar dados em uma matriz e apresentar em ordem inversa
// Apresentar nomes inertidos que foram digitados 

Function ListaMatrizInversa(iQtdeInform)

Local aMat := {}
Local iQtde := 0
Local iCont := 1
Local cInform := ""

iQtde := iQtdeInform

While iCont <= iQtde 
    Accept("Informe um valor:  ") to cInform
    AAdd(aMat,[iCont])
    aMat[Len(aMat)] := cInform
    iCont++
Enddo




Return (aMat)

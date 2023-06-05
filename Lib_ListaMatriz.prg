// Lib para Ler Dados informados 
// Qtde Informada via Funcao

Function ListaMatriz(iQtdeinform)
Local aMat := {}
Local iQtde := 10
Local iCont := 1
Local cInform := ""

iQtde := iQtdeInform

While iCont <= iQtde 
    Accept("Informe um valor:  ") to cInform
    AAdd(aMat,[iCont])
    aMat[Len(aMat)] := cInform
    iCont++
Enddo

iQtde := Len(aMat)
iCont := 1
While iCont <= iQtde
    QOut(aMat[iCont])
    
    iCont++
Enddo


Return (aMat)

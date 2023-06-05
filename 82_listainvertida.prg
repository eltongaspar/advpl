// Exercicio 82
// Apresentar nomes invertidos que foram digitados 

Function Main()

Local mVal := {}
Local iQtde := 10
Local iCont := 1
Local cInform := ""

While iCont <= iQtde 
    Accept("Informe um valor:  ") to cInform
    AAdd(mVal,[iCont])
    mVal[Len(mVal)] := cInform
    iCont++
Enddo

iCont := Len(mVal)
While iQtde > 0
    QOut(mVal[iCont])
    iQtde--
    iCont--
Enddo



Return Nil 

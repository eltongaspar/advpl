// Exercicio 82
// Apresentar nomes invertidos com 10 mil valores 

SET PROCEDURE TO Lib_GeraNumAleatMinMax.prg

Function Main()

Local mVal := {}
Local iQtde := 10000
Local iCont := 1
Local cInform := ""
Local iQtdeGerInform := 0
Local iNumMinInform := 0
Local iNumMaxInfor := 10000
Local aTemp := {}

iQtdeGerInform := iQtde
aTEmp := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)

While iCont <= iQtde 
    
    AAdd(mVal,[iCont])
    mVal[Len(mVal)] := aTemp[iCont]
    iCont++
Enddo

iCont := Len(mVal)
While iQtde > 0
    QOut(mVal[iCont])
    iQtde--
    iCont--
Enddo



Return Nil 

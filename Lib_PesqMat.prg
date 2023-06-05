// Lib para pesquisar valores em uma matriz

Function PesqMat(aMatriz)

Local aMatrizPesq := {}
Local iCont := 0
Local iQtdeGerInform := 0
Local iPesq := ""
Local iResultPesq := 0

aMatrizPesq := aMatriz

Accept("Pesquisar um Caracter:=  ") to iPesq
iPesq := Val(iPesq)
iQtdeGerInform := Len(aMatrizPesq)


For  iCont :=1 to iQtdeGerInform

    IF iPesq = aMatrizPesq[iCont]
        iResultPesq := Len(aMatrizPesq)
    
        QOut("Resultado Busca" + Str(iCont))
    EndIf 
   
Next

Return (iResultPesq)

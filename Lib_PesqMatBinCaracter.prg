// Lib para pesquisar valores em uma matriz Binario e Caracter

Function PesqMatBinCaracter(aMatriz)

Local aMatrizPesq := {}
Local iCont := 0
Local iQtdeGerInform := 0
Local iResultPesq := 0
Local iBin2 := 0
Local iCaracter := 0

aMatrizPesq := aMatriz

Accept("Pesquisar um Caracter:=  ") to iCaracter
Accept("Pesquisar um Binario:=  ") to iBin2

iCaracter := Val(L2Bin(iCaracter))
iBin2 := Val(iBin2)
iQtdeGerInform := Len(aMatrizPesq)


For  iCont :=1 to iQtdeGerInform

    IF iBin2 = aMatrizPesq[iCont] .Or. iCaracter = aMatrizPesq[iCont]
        iResultPesq := Len(aMatrizPesq)
    
        QOut("Resultado Busca" + Str(iCont))
        
    EndIf 
   
Next

Return (iResultPesq)

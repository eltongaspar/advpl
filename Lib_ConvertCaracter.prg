// Gerar Caracteres Letras 

Set Procedure to Lib_GeraCaracterAleat.prg
Set Procedure to Lib_ExibMatriz.prg

Function  ConvertCaracter()
Local aGerCaract := {}
Local cTemp := ""
Local aMatriz := {}
Local iCont := 1


QOut("Gerando Lista ASC")
While iCont <= iQtdeGerInform

    cTemp := aGerCaract[iCont]
    cTemp := CHR(cTemp)    
    AAdd(aMatriz,[iCont])
   	aMatriz[Len(aMatriz)] :=cTemp
	iCont++
ENDDO

QOut("Gerando Caracteres")
ExibMatriz(aMatriz)

Return Nil 

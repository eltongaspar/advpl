// Lista 07 - Exercicio 21
// Gerar Caracteres Letras Minusculas

Set Procedure to Lib_GeraCaracterAleat.prg
Set Procedure to Lib_ExibMatriz.prg

Function Main ()
Local iQtdeGerInform := 12
Local iMinInform := 0
Local iMinInform2 := 0
Local iMaxInfor := 97
Local iMaxInfor2:= 122
Local aGerCaract := {}
Local cTemp := ""
Local aMatriz := {}
Local iCont := 1



aGerCaract := GeraCaracterAleat(iQtdeGerInform,iMinInform,iMinInform2,iMaxInfor,iMaxInfor2)

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
                                
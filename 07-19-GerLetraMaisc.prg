// Lista 07 - Exercicio 19 
// Gerar Caracteres Letras Maisculas 

Set Procedure to Lib_GeraCaracterAleat.prg
Set Procedure to Lib_ExibMatriz.prg

Function Main ()
Local iQtdeGerInform := 50
Local iMinInform := 0
Local iMinInform2 := 0
Local iMaxInfor := 65
Local iMaxInfor2:= 90
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
                                
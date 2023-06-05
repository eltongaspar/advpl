// Lista 07 - Exercicio 20 
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
Local cPesq := ""
Local iResultPesq := 0

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

Accept("Pesquisar um Caracter:=  ") to cPesq

For  iCont :=1 to iQtdeGerInform

    IF cPesq = aMatriz[iCont]
    iResultPesq := Len(aMatriz)
    
    QOut("Resultado Busca" + Str(iCont))
    EndIf 
   
Next

Return Nil 
                                
// Lib para Encrypt de Senha (Harbour e Asc)
// Pesquisa Binaria 


Function Encrypt()

Local cPassDigit := ""
Local iAsc := 0
Local iBin2 := 0
Local cPass := ""
Local iQtdeCaract := 0
Local aAscMat := {}
Local iCont := 0
Local iAscPass := 0

Accept("Informe a Senha:  ") to cPassDigit

iQtdeCaract := Len(cPassDigit)
iCont := 1

While iCont <= iQtdeCaract 
    iAsc := ASC(SubStr(cPassDigit,iCont,1))
    AAdd(aAscMat,[iCont])
   	aAscMat[Len(aAscMat)] := iAsc
	iCont++
    
Enddo


iQtdeCaract := Len(cPassDigit)
iCont := 1

While iCont <= iQtdeCaract 
    iAscPass := iAscPass + aAscMAt[iCont]
    iCont++
Enddo


iBin2 := BIN2L(cPassDigit) 
//cPassDigit := L2Bin(iBin2) 
cPass := (iBin2 * iAscPass)

QOut("Senha Harbour: " + STR(iBin2))
Qout("Senha Asc:  " + Str(iAscPass))
Qout("Senha Encrypt:  " + Str(cPass))
 



Return Nil

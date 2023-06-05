// Lib para Calculo Valor Futuro 

SET PROCEDURE TO Lib_ValidNum.prg

Function CalcValorFuturo()
Local rVP := 0 // VAlor Presente
Local rVF := 0 // Valor Futuro
Local rVPL := 0 // Valor Prsente Liquido
Local rJ := 0 // Juros 
Local rI := 0 // Taxa de Juros
Local rN := 0 // Prazo
Local rNumInform := 0
Local iTipoCalc := 0 // Tipo de Calculo 1-Juros Simples 2-Juros Compostos
Local cMessage := ""

Accept("Informe o Valor Presente VP:  ") to rNumInform
rVP := ValidNum(rNumInform)

Accept("Informe a Taxa de Juros I:  ") to rNumInform
rI := ValidNum(rNumInform)

Accept("Informe o Prazo N:  ") to rNumInform
rN := ValidNum(rNumInform)

While iTipoCalc <> 1 .And. iTipoCalc <> 2

    Accept("Informe o Tipo de Calculo(1-Juros Simples / 2-Juros Compostos)") to iTipoCalc
    iTipoCalc := Val(iTipoCalc)

    If iTipoCalc = 1 
        rVF := rVP*(1+(rI/100)*rN)
        cMessage := "Juros Simples"
    EndIf 

    If iTipoCalc = 2 
        rVF := rVP*((1+rI/100)^rN)
        cMessage := "Juros Compostos"
    EndIf 

Enddo

rJ := rVF-rVp 
rVPL := rVF/(1+(rI/100)*rN)

QOut("Valor Futuro:  " + Str(rVF))
QOut("Valor dos Juros  " + Str(rJ))
QOut("VAlor Presente Liquido VPL:  " + Str(rVPL))
QOut(cMessage)


Return (rVF,rVPL)

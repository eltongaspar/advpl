// Lib para Gerar Matriz R
// Soma dos Elementos N e M

Function GeraMatR(aM,aN)

Local aMR := {}
Local aNR := {}
Local aRR := {}
Local iCont := 0
Local iCont2 := 0
Local iQtdeM := 0
Local iQtdeN := 0
Local iQtdeCol := 3
Local iQtdeLin := 10
Local iSoma := 0
Local iLin := 0
Local iCol := 0
Local iNTemp := 0
Local iMTemp := 0

aMR := aM
aNR := aN

QOut("Validando Qtde de Elementos nas Matrizes N e M")

iQtdeM := Len(aMR)
QOut("M")
QOut(iQtdeM)

iQtdeN := Len(aNR)
QOut("N")
QOut(iQtdeN)

If iQtdeM = iQtdeN 
    QOut("*******Validado*******")
EndIf

If iQtdeM <> iQtdeN 
    QOut("xxxxxxxErroxxxxxxx")
    Break
EndIf

iCont := 1
iCont2 := 1

While iCont <= iQtdeCol

    iCol := iCont
    iCont2 := 1
   
    While iCont2 <= iQtdeLin
        iLin := iCont2
        iNTemp := aNR[iCont2,2]
        iMTemp := aMR[iCont2,2]
        //iMTemp := Val(iMTemp)
        //iNTemp := Val(iMTemp)
        iSoma := iNTemp + iMTemp
        Aadd(aRR, [iCont,iCont2])
        aRR[Len(aRR)] := {iCol,iSoma}
        iCont2++
       
    Enddo


    iCont++
    iCont2 := 1
    
Enddo

QOut("Matriz R")
QOUT(hb_valtoexp(aRR))



Return (aRR)

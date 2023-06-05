// Calculo de Z

Function CalcZ(iQtdeZInform)
Local rResultA := 0
Local rResultB := 0
Local rResultB2 := 0
Local rResultBFim := 0
Local rResultC := 0
Local iCont := 0
Local iCont2 := 0
Local iQtdeZ := 0
Local iOperac := 0

iQtdeZ := iQtdeZInform

While iCont <= iQtdeZ
    rResultA := rResultA + (1/iCont)
    iCont++
Enddo 

iCont := 0
iCont2 := iQtdeZ

While iCont <= iQtdeZ
    rResultB := rResultB + (iCont/iCont2)
    rResultB2 := rResultB2+(iCont2/iCont)

    iCont++
    iCont2--

Enddo
rResultBFim := rResultB +rResultB2

iCont := 0
iCont2 := 2

While iCont <= iQtdeZ
    iOperac := Mod(ICont,2)

    If iCont = 1 
        rResultC := rResultC+(iCont/(iCont2*2))
    EndIf 

    If iOperac = 0 .and. iCont <> 1
        rResultC := rResultC-(iCont/(iCont2*2))
    EndIf 

     If iOperac > 0 .and. iCont <> 1
        rResultC := rResultC+(iCont/(iCont2*2))
    EndIf 
    ICont++
Enddo 


QOut("Calaculo A Resultado Z:  " +  Str(rResultA))
QOut("Calaculo B Resultado Z:  " +  Str(rResultBFim))
QOut("Calaculo C Resultado Z:  " +  Str(rResultC))



Return(rResultA,rResultBFim,rResultC)

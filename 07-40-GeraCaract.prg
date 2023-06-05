// Lista 07 - Exxercicio 40 

Set Procedure to Lib_GeraCaracterAleat.prg
Set Procedure to Lib_ExibMatriz.prg
Set Procedure to Lib_ConvertMatAsctoCHR.prg

Function Main()
Local aListCaract := {}
Local iQtdeGerInform := 5
Local iMinInform := 65
Local iMinInform2 := 90
Local iMaxInfor := 97
Local iMaxInfor2 := 122
Local iQtdeCaract := 5
Local iCont := 0
Local aMatriz := {}
Local iQtdeColInform := 0
Local iQtdelinInform := 5

iQtdeColInform := iQtdeGerInform

iCont := 1
While iCont <= iQtdeLinInform
    Aadd(aListCaract,[iCont])
    aListCaract[Len(aListCaract)] := GeraCaracterAleat(iQtdeGerInform,iMinInform,iMinInform2,iMaxInfor,iMaxInfor2)
        
    iCont++

Enddo 

aMatriz := aListCaract
ExibMatriz(aMatriz)

aMatriz := ConvertMatAsctoCHR(aMatriz,iQtdeColInform,iQtdelinInform)
QOut("Caracteres Diagonais")
QOUT(hb_valtoexp(aMatriz[1]))
QOUT(hb_valtoexp(aMatriz[7]))
QOUT(hb_valtoexp(aMatriz[13]))
QOUT(hb_valtoexp(aMatriz[19]))
QOUT(hb_valtoexp(aMatriz[25]))

QOut("ASC Diagonais")
QOut(aListCaract[1,1])
QOut(aListCaract[2,2])
QOut(aListCaract[3,3])
QOut(aListCaract[4,4])
QOut(aListCaract[5,5])


Return Nil 

// Lib 
// Gera Matriz N 10x3 Elemento = Indice Coluna + Indice Linha


Function GeraMatN()

Local aNN := {}
lOCAL iQtdeCol := 3
Local iCont := 0
Local iCont2 := 0
Local iLin := 0
Local iCol := 0
Local iSoma := 0
Local iQtdeLin := 10


iCont := 1
iCont2 := 1

While iCont <= iQtdeCol

    iCol := iCont
    iCont2 := 1
    While iCont2 <= iQtdeLin
        iLin := iCont2
        iSoma := iCol + iLin
        Aadd(aNN, [iCont,iCont2])
        aNN[Len(aNN)] := {iCol,iSoma}
        iCont2++
        
    Enddo


    iCont++
    iCont2 := 1
    
Enddo
QOut("Matriz N")
QOUT(hb_valtoexp(aNN))

Return (aNN)

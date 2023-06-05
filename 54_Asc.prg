// Exercio 54 
// Exibir Tabela ASc de 32 ao 126 

Function Main()

Local aTabAscW := {}
Local aTabAscF := {}
Local iAscIni := 32
Local iAscFim := 132
Local cChar := ""
Local iCont := 1
Local iCont2 := 1
Local iContFim := 0

While iAscIni <= iAscFim
    cChar := Chr(iAscIni)

    AAdd(aTabAScW,[iCont,1])
    aTabAscW[Len(aTabAscW)] := iAscIni

    AAdd(aTabAScW,[iCont,2])
    aTabAscW[Len(aTabAscW)] := cChar

    icont++
    IAscIni++
Enddo

iCont := 1
For iAscIni := 32 to iAscFim
    cChar := Chr(iAscIni)

    AAdd(aTabAScF,[iCont,1])
    aTabAscF[Len(aTabAscF)] := iAscIni

    AAdd(aTabAScF,[iCont,2])
    aTabAscF[Len(aTabAscF)] := cChar

    icont++
    IAscIni++
Next

//iContFim := (Len(aTabAsc))
//QOut (iContFim)

Qout ("******* Tabela Asc e Caracteres While ******* ")

QOUT(hb_valtoexp(aTabAScW))


Qout ("******* Tabela Asc e Caracteres While ******* ")

QOUT(hb_valtoexp(aTabAScF))



/*While iCont2 < iCont2
    Qout (aTabAsc[iCont2])
    Qout (aTabAsc[2])
    iCont2++
Enddo*/

Return Nil 

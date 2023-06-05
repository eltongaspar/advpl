// Jogo do Pim 

Function Pim(rNumInform,InumMaxInform)

Local iNumMult := 0
Local iNumMax := 0
Local aResultPim := {}
Local iCont := 1
Local rRest := 0

iNumMult := rNumInform
iNumMax := InumMaxInform

While iCont <= iNumMax
    rRest := Mod(iCont,iNumMult)

    If rRest = 0
        AAdd(aResultPim,[iCont])
   	 	aResultPim[Len(aResultPim)] := "PIM"
    EndIf

    If rRest <> 0
        AAdd(aResultPim,[iCont])
   	 	aResultPim[Len(aResultPim)] := iCont
    EndIf

    iCont++
Enddo 

QOUT(hb_valtoexp(aResultPim))


Return (aResultPim)


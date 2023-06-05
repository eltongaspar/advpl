
// Valores multiplos


Function ResultDividMat(iDivInform, aMTemp)

Local aResultW := {}
Local aResultF := {}
Local iNum := 1
Local iRepet := 0
Local iDiv := 0
Local iCont := 1
Local iTemp := 0
Local iTemp2 := 0



iDiv := Val(iDivInform)
iRepet := Len(aMTEmp)

For ICont := 1 to iRepet 
       iTemp := (aMTemp[iCont])
       iTemp2 := Mod(iTemp,iDiv)

        If iTemp2 = 0 
        AAdd(aResultF,[iNum])
        aResultF[Len(aResultF)] := iTemp
        
        iNum++
    EndIf
    
Next

iRepet := Len(aMTEmp)
iCont := 1
iNum := 1

While iCont <= iRepet
    iTemp := (aMTemp[iCont])
    iTemp2 := Mod(iTemp,iDiv)
   
    If iTemp2 = 0 
        AAdd(aResultW,[iNum])
        aResultW[Len(aResultW)] := iTemp
       iNum++

    EndIf
    ICont++
Enddo 




iRepet := Len(aResultF)
iCont := 1

QOut("******* Numeros Divisiveis For *******")
While iCont <= iRepet
    Qout(aResultF[iCont])
    iCont++
Enddo*/


iRepet := Len(aResultW)
iCont := 1

QOut("******* Numeros Divisiveis While *******")
While iCont <= iRepet
    Qout(aResultW[iCont])
    iCont++
Enddo*/


//QOUT(hb_valtoexp(amTemp))

//QOUT(hb_valtoexp(aResultW))



Return (aResultW,aResultF)

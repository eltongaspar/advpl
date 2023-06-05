// Exercio 52
// Gerar valores50  de 10 a 99 alaetorios 
// Exibir na tela 

Function Main()

Local aResultWhile := {}
Local aResultFor := {}
Local aResultLF := {}


aResultWhile := GeraNumAleatWhile([aNumGer])
aResultFor := GeraNumAleaFor([aNumGer])
aResultLF := GeraNumAleaLF([aNumGer])

Qout ("*******Numeros Gerados aleatoreamente De 10 a 99 (50 Nums)-While******* ")
QOUT(hb_valtoexp(aResultWhile))

Qout ("*******Numeros Gerados aleatoreamente De 10 a 99 (50 Nums)-For******* ")
QOUT(hb_valtoexp(aResultFor))

Qout ("*******Numeros Gerados aleatoreamente De 10 a 99 (50 Nums)-For******* ")
QOUT(hb_valtoexp(aResultLF))

Return Nil

//*****************************************************************************************//
Function GeraNumAleatWhile()
Local aNumGer:= {}
Local iCont := 1
Local iMin := 10
Local iMax := 100
Local iNum := 0
Local iQtdeGer := 50


While iCont <= iQtdeGer 
    iNum := RANDOM(iMin,iMax)
   
   
    If iNum >= iMin .And. iNum <= iMax
        AAdd (aNumGer,iCont)
        aNumGer[iCont] := iNum
         iCont++
    EndIf
    
Enddo

Return (aNumGer)

//*****************************************************************************************//
Function GeraNumAleaFor()
Local aNumGer:= {}
Local iCont := 1
Local iMin := 10
Local iMax := 100
Local iNum := 0
Local iQtdeGer := 50


For iCont :=1 To iQtdeGer 
    iNum := HB_Randomint (iMin,iMax)
    AAdd (aNumGer,iCont)
    aNumGer[iCont] := iNum
   
EndFor

Return (aNumGer)


//*****************************************************************************************//
Function GeraNumAleaLF()
Local aNumGer:= {}
Local iMin := 10
Local iMax := 100
Local iNum := 0
Local iCont := 0

For iCont := 1 To 50
    iNum := HB_Randomint (iMin,iMax)
    AAdd (aNumGer,iCont)
    aNumGer[iCont] := iNum
   
Next

Return (aNumGer)

// Exercio 53 
// Gerar numero aleatorio 10 a 99, se 80 sair.



// Exercio 52
// Gerar valores50  de 10 a 99 alaetorios 
// Exibir na tela 

Function Main()

Local aResultWhile := {}
Local aResultFor := {}
Local aResultLF := {}
Local nPosWhile := 0
Local nPosFor := 0
Local nPosLF := 0


aResultWhile := GeraNumAleatWhile([aNumGer])
aResultFor := GeraNumAleaFor([aNumGer])
aResultLF := GeraNumAleaLF([aNumGer])


nPosWhile:= hb_AScan(aResultWhile,80,1,,.T.)
hb_AIns(aResultWhile,nPosWhile,"*******",.F.) 

//nPosFor:= hb_AScan(aResultFor,80,1,,.T.)
//QOut(nPosFor)

//nPosLF:= hb_AScan(aResultLF,80,1,,.T.)
//QOut(nPosLF)


Qout ("*******Numeros Gerados aleatoreamente De 10 a 99 (Stop 80)-While******* ")
QOUT(hb_valtoexp(aResultWhile))

Qout ("*******Numeros Gerados aleatoreamente De 10 a 99 (Stop 80)-For******* ")
QOUT(hb_valtoexp(aResultFor))

Qout ("*******Numeros Gerados aleatoreamente De 10 a 99 (Stop 80)-ForLI******* ")
QOUT(hb_valtoexp(aResultLF))

Return Nil

//*****************************************************************************************//
Function GeraNumAleatWhile()
Local aNumGer:= {}
Local iCont := 1
Local iMin := 10
Local iMax := 100
Local iNum := 0
Local iNumStop := -1 


While iNum <> iNumStop
    iNum := RANDOM(iMin,iMax)
       
    If iNum >= iMin .And. iNum <= iMax 
        AAdd (aNumGer,iCont)
        aNumGer[iCont] := iNum
         iCont++
        
    EndIf

    QOUT(hb_valtoexp(aNumGer))
        
Enddo

Return (aNumGer)

//*****************************************************************************************//
Function GeraNumAleaFor()
Local aNumGer:= {}
Local iCont := 1
Local iMin := 10
Local iMax := 100
Local iNum := 0
Local iQtdeGer := 91
Local iNumStop := 80



For iCont :=1 To iQtdeGer 
    iNum := HB_Randomint(iMin,iMax)
    
    If iNum <> INumStop 
    AAdd (aNumGer,iCont)
    aNumGer[Len(aNumGer)] := iNum
    ENDIF
   
Next


Return (aNumGer)


//*****************************************************************************************//
Function GeraNumAleaLF()
Local aNumGer:= {}
Local iMin := 10
Local iMax := 100
Local iNum := 0
Local iCont := 0
Local iNumStop := 80
Local iQtdeRepet := 91

For iCont := 1 To 90
    iNum := HB_Randomint (iMin,iMax)

    If iNum <> iNumStop
        AAdd (aNumGer,iCont)
       aNumGer[Len(aNumGer)] := iNum
    EndIf

Next

Return (aNumGer)

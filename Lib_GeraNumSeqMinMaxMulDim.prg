// Gerador de Numeros Squenciais
// Informar Numero Minimo e Maximo 
// Qtde de geracoes usuario informa

Function GeraNumSeqMinMaxMulDim(iQtdeGerInform,iNumMinInform,iNumMaxInfor)
Local iNum := 0
Local iMax := 8
Local iMin := 0
Local iCont := 1
Local iCont2 := 1
Local iCont3 := 1
Local iPos1 := 0
Local iPos2 := 0
Local iPos3 := 0
Local nSeed := 1
Local aNumGer := {}
Local iQtdeLin := 3
Local iQtdeCol := 3
Local iColPos:= 0
Local iQtdeRepet := 9
Local iTemp := 0
Local iMult := 0

iQtdeRepet := iQtdeGerInform
iMin := iNumMinInform
iMax := iNumMaxInfor

iCont := 1
iCont2 := 1
iNum := iMin

While iCont <= iQtdeRepet

            
    iPos2 := iPos1 + 1
    iPos3 := iPos2 + 1
    iCont2 := iCont + 1
    iCont3 := iCont2 + 1

    Aadd(aNumGer,[iCont,iCont2,iCont3])
    aNumGer[Len(aNumGer)] := {iPos1,iPos2,iPos3}
    iCont2++
        
                
    iPos1 := iPos3
    iCont := iCont3
    iPos1++
    iCont++
    
Enddo


iTemp := Len(aNumGer)
iCont := 1

QOut("******* Numeros Sorteados *******")
While iCont <= iTemp
    
    Qout(aNumGer[iCont,2])
    Qout(aNumGer[iCont,3])
   iCont++
    
Enddo

QOut("Resultado")
QOUT(hb_valtoexp(aNumGer))


Return (aNumGer)

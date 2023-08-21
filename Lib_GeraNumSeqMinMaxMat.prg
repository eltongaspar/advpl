// Gerador de Numeros Sequenciais
// Informar Numero Minimo e Maximo 
// Qtde de geracoes usuario informa
// Infomea Tamanho Matriz

Function GeraNumSeqMinMaxMat(iQtdeGerInform,iNumMinInform,iNumMaxInfor)
Local iNum := 0
Local iMax := 12
Local iMin := 1
Local iCont := 1
Local nSeed := 1
Local aNumGer := {}
Local iQtdeRepet := 0
Local iTemp := 0


iQtdeRepet := iQtdeGerInform
iMin := iNumMinInform
iMax := iNumMaxInfor

While iCont <= iQtdeRepet
    iNum := iMin
    AAdd (aNumGer,iCont)
    aNumGer[iCont] := iNum
    iCont++
    iMin++
               
                
Enddo

iTemp := Len(aNumGer)
iCont := 1
QOut("******* Numeros Gerados Sequenciais *******")
    
While iCont <= iTemp
Qout(aNumGer[iCont])
iCont++
Enddo


Return (aNumGer)

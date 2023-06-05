// Lista 07 - Exercicio 38
// Gerar Lista A e atribuir em B 

Set Procedure to Lib_GeraMatMultDimNumAleatMinMax.prg

Function Main()

Local aB := {}
Local aA := {}
Local iQtdeGerInform := 3
Local iNumMinInform := 0
Local iNumMaxInfor := 1000
Local iQtde := 0
Local iCont := 0
Local iCont2 := 0
Local iCont3 := 0
Local iTemp := 0
Local iTemp2 := 0
Local iTemp3 := 0

aA := GeraMatMultDimNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)

iQtde := Len(aA)
iCont := 1
iCont2 := 1
iCont3 := 1
While iCont <= iQtde

    iTemp:= aA[iCont,1]
    iTemp2:= aA[iCont,2]
    iTemp3:= aA[iCont,3]
    Aadd(aB,[iCont,iCont2,iCont3])
    aB[Len(aB)] := {iTemp3,iTemp2,iTemp}
    iCont++
    iCont2++
    iCont3++

Enddo

QOut("Resultado")
QOUT(hb_valtoexp(aB))

Return Nil 



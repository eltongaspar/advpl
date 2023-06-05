// Lista 07 - Exercicio 8
// Ler dois Vetores A e B de 20 elementos e somar e apresnetar em C

Set Procedure to Lib_GeraNumAleatMinMax.prg

Function Main ()
Local iQtdeGerInform := 20
Local iNumMinInform := 1
Local iNumMaxInfor := 100
Local iCont := 1
Local aA := {}
Local aB := {}
Local aC := {}

QOut("Gerando Matriz A")
aA := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)

QOut("Gerando Matriz B")
aB := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)

For iCont := 1 to iQtdeGerInform
    AAdd(aC,[iCont])
   	aC[Len(aC)] := aA[iCont] + aB[iCont]
		
Next

QOut("Resultado da Soma A+B=C")
QOUT(hb_valtoexp(aC))

Return Nil 

// Lista 07 Exercicio 39
//Gerar Matriz 3x3 de 0 a 8 
// Calculo Diferenca da Diagonal 

Set Procedure to Lib_GeraNumSeqMinMaxMulDim.prg

Function Main()
Local aA:= {}
Local iQtdeGerInform := 9
Local iNumMinInform := 0
Local iNumMaxInfor := 8
Local rDiagPrincip := 0
Local rDiagSec := 0
Local rDiagDif := 0

aA := GeraNumSeqMinMaxMulDim(iQtdeGerInform,iNumMinInform,iNumMaxInfor)

rDiagPrincip :=  aA[1,1] + aA[2,2] + aA[3,3]
rDiagSec :=  aA[1,3] + aA[2,2] + aA[3,1]
rDiagDif := rDiagPrincip - rDiagSec

QOut("Soma Diagonal Principal  " + Str(rDiagPrincip))
QOut("Soma Diagonal secundaria  " + Str(rDiagSec))
QOut("Diferença da Soam das Diagonais  " + Str(rDiagDif))



Return Nil

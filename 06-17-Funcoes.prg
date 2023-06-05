// Lista 06 - Exercicio 17 

Set Procedure to Lib_InvertVar.prg
Set Procedure to Lib_ValidParImpar.prg
Set Procedure to Lib_IsDiv.prg

Function Main()

Local cAInform := ""
Local cBInform := ""
Local nResultInform := 0

QOut("Inverter Variavies")
InvertVar(cAInform,cBInform)

QOut("Verifica se numero Par")
nResultInform := ValidParImpar()
If nResultInform = 0
    QOut("Numero Par")

Else 
    QOut("Numero nao e Par") 
EndIf


QOut("Verifica se numero Impar")
nResultInform := ValidParImpar()
If nResultInform > 0
    QOut("Numero Impar")

Else 
    QOut("Numero nao e Impar") 
EndIf


QOut("Verifica se A e divisivel por B")
isDiv()

Return Nil 

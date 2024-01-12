// Função Tela Tempo e Parada - Inkey 
Function FuncaoTela(lWait,lInkey,iTempInkey)

If lWait = .T.
    Wait('Aperte uma Tecla para Continuar') 
EndIf

If lInkey = .T.
    INKEY(iTempInkey)
EndIf

Return Nil 

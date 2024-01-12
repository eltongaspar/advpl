
// Perguntas para a Funcao Tela Parada e Tempo - Wait e Inkey

Function FuncaoTelaPergunt()

local lWait := .F.
local lInkey := .F.
local iWaittValid := 0
local iInkeytValid := 1
local iTempInkey := 1

While iWaittValid <> 1 .And. iWaittValid <> 2
    Accept('Deseja ter Parada de Tela (Wait) - 1-Sim/2-Nao:  ') to iWaittValid
    iWaittValid := Val(iWaittValid)

    If iWaittValid = 1 
        lWait := .T.
    End 

    If iWaittValid = 2 
        lWait := .F.
    End 

Enddo

While iInkeytValid <> 1 .And. iInkeytValid <> 2
    Accept('Deseja ter Tempo de Tela (Inkey) - 1-Sim/2-Nao:  ') to iInkeytValid
    iInkeytValid := Val(iInkeytValid)

    If iInkeytValid = 1 
        lInkey := .T.
        Accept('Informe o Tempo de Espera de Tela em segundos:  ') to iTempInkey
        iTempInkey := Val(iTempInkey)
    End 

    If iInkeytValid = 2 
        lInkey := .F.
    End 
Enddo

Return (lWait,lInkey,iTempInkey)


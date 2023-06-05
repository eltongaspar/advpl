// Lib para pesquisar valores em uma matriz

Function PesqMatPos(aMatriz)

Local aMatrizPesq := {}
Local iCont := 0
Local iCont2 := 0 
Local iCont3:= 1
Local iCont4 := 1
Local iQtdeGerInform := 0
Local iPesq := ""
Local iResultPesq := 0
Local iPesqRepet := 0
Local iCheck := 0
Local aListPesq := {}
Local iUltimPesq := 0

aMatrizPesq := aMatriz


iPesq := Val(iPesq)
iQtdeGerInform := Len(aMatrizPesq)


For  iCont :=1 to iQtdeGerInform
    iPesq := aMatrizPesq[iCont]
    iPesqRepet := 0
            
    For iCont2 := 1 to iQtdeGerInform
        IF iPesq = aMatrizPesq[iCont2]
            
            
            iResultPesq := Len(aMatrizPesq)
            iPesqRepet ++
            iUltimPesq := iPesq
            
                      
        EndIf
    Next

    If iPesqRepet >= 2 .Or. iPesq <> iUltimPesq 
        AAdd(aListPesq,[iCont3,iCont4])
        aListPesq[Len(aListPesq)] := {iPesq,iCont}
        iCont3++
        
        QOut("Analisando a Matriz para Repetidos")
        QOut("Resultado Busca Posicao " + Str(iCont))
        QOut("Valor Repetido  " +        Str(iPesq))
        QOut("Quantidades  " +           Str(iPesqRepet))
        
        iCheck := 1
    EndIf

       
Next

If iCheck = 1
    QOut("Resultados dos Numeros Repetidos [Valor Matriz,Posicao Matriz]")
    QOUT(hb_valtoexp(aListPesq))
    Qout("Total de Repetidos: " + STR(iCont3-1))
EndIf

If iCheck = 0
    QOut("*******Varredura Completa, sem valores repetidos na Matriz******* " )
EndIf



Return (iResultPesq)

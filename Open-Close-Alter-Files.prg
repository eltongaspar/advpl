Function Main ()

Local nHandleFiles := 0
Local iCont := 0
Local iContTot := 2
Local cDados := ""
Local aDadosM := {}


nHandleFiles := FCREATE("File_Teste_Aula.txt")

For iCont := 1 to iContTot
    Accept("Digite um Nome:  ") to cDados
    Aadd(aDadosM,[iCont])
      
    aDadosM[Len(aDadosM)] := Upper(cDados)
    cDados += CHR(13)
    FWrite(nHandleFiles,Upper(cDados))


Next iCont

FClose(nHandleFiles)

iCont := 1
For iCont:=1 to iContTot
    Qout(aDadosM[iCont])
    
Next 
 


QOUT(hb_valtoexp(aDadosM))

Return Nil 

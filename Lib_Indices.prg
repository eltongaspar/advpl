// Calculo IGPM/IPCA


Function Indices()
Local  rNumIndic := 0
Local cNumInform := ""
Local aValIndic := {}
Local iQtdeIndic:= 0
Local rMedIndic := 0
Local rTotalIndic := 0
Local iTec := 0
Local iCont := 1
Local iQtdeMat := 0
Local lValidNum := .F.
Local iCont2 := 0


While cNumInform <> "F" 


    Wait("Aperte uma Tecla para continuar, ESC para ver Resultado Parcial")
    iTec := LastKey()
        
    
    If iTec = 27
        QOut("Qtde de Indices Informados  " + Str(iQtdeIndic)) 
        QOut("Valor Acumulado" + Str(rTotalIndic) )
        QOut("Media Indice:  " + Str(rMedIndic))
        
        Loop 
    EndIf 
   
    Accept("Informe um valor ou F para Fim:  ") to cNumInform
             
    lValidNum := IsDigit(cNumInform)
    rNumIndic := Val(cNumInform)
    //QOut(lValidNum)
    If cNumInform <> "F" .and. lValidNum = .T. 
        AAdd(aValIndic,[iCont])
   	 	aValIndic[Len(aValIndic)] := rNumIndic
		iCont++
              
    ENDIF
     
    iCont2 := 1
    iQtdeMat := Len(aValIndic)
  
    //QOut(aValIndic)
    iQtdeIndic := 0
    rTotalIndic := 0
    rMedIndic := 0

    While iCont2 <= iQtdeMat
        rTotalIndic := rTotalIndic + (aValIndic[iCont2])
        iQtdeIndic++
        rMedIndic := rTotalIndic / iQtdeIndic

        iCont2++
    Enddo


    If cNumInform = "F"
        QOut("Qtde de Indices Informados  " + Str(iQtdeIndic)) 
        QOut("Valor Acumulado" + Str(rTotalIndic) )
        QOut("Media Indice:  " + Str(rMedIndic))
        Break 
        EndIf 

Enddo


    
Return (iQtdeIndic,aValIndic,rMedIndic,rTotalIndic)



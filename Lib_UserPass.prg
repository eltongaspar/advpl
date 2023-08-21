// Usuario e senha

Function UserPass()
// Variaveis 

Local cPassConfirm := ""
Local cPassDigit := ""
Local cUserDigit := "" 
Local nCountUser := 0
Local nCountPass := 1
Local nQtdeCaractPass := 0
Local cTemp := ""
Local lValidLetMaisc := .F.
Local lValidDigit := .F.
Local lValidLet := .F.
Local iQtdeLetMaisc := 0
Local iQtdeDigit := 0
Local iQtdeSimb := 0
Local iValidSegPass := 0
Local iConfirPass := 0

// Informacao
While nCountUser < 5
    Accept "Informe seu usuario " to cUserDigit
    nCountUser := Len(cUserDigit)
Enddo

While nQtdeCaractPass <= 6 .or. iValidSegPass = 0
    Accept "Informe sua senha: " to cPassDigit
    nQtdeCaractPass := Len(cPassDigit)
    //QOut(nQtdeCaractPass)

    iQtdeLetMaisc = 0
    iQtdeDigit = 0
    iQtdeSimb = 0
    iValidSegPass := 0

   
    For nCountPass :=1 To nQtdeCaractPass
        cTemp := SubStr(cPassDigit, nCountPass, 1)
            
        lValidLetMaisc := IsUpper(cTemp)
        If lValidLetMaisc = .T.
            iQtdeLetMaisc := iQtdeLetMaisc+1
        EndIf

        lValidDigit := IsDigit(cTemp)
        If lValidDigit = .T.
            iQtdeDigit = iQtdeDigit+1
        EndIf

        lValidLet := IsAlpha(cTemp)
            
        
        If lValidLet = .F. .and. lValidDigit = .F.
            iQtdeSimb = iQtdeSimb+1
           
        EndIf
            
    Next
       
    
    If iQtdeLetMaisc >0 .and. iQtdeDigit > 0 .and. iQtdeSimb > 0 .and. nQtdeCaractPass >=6
        iValidSegPass := iValidSegPass+1
    EndIf
    /*QOut("Maisculas")
    Qout(iQtdeLetMaisc)
    QOut("Numeros")
    QOut(iQtdeDigit)
    QOut("Simbolos")
    QOut(iQtdeSimb)
    QOut("Seguranca")
    QOut(iValidSegPass)// Valicao para Debug*/
Enddo

While iConfirPass = 0  
    Accept("*****Confirme a senha: *******") to cPassConfirm
    If cPassConfirm = cPassDigit
        iConfirPass := 1
    EndIf
Enddo



QOut("******Usuário e senha cadastrado com sucesso*******")


Return (cUserDigit,cPassConfirm)

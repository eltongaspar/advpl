// Exercio 35 
// Usuario e senha

Function Main()
// Variaveis 
Local cUserSys := "admin"
Local cPassSys := "Totvs2022"
Local cPassDigit := "a"
Local cUserDigit := "b" 
Local lValid := .F.
Local nCountUser := 0
Local nCountPass := 0

// Informacao
While lValid = .F. 
Accept "Informe seu usuÃ¡rio " to cUserDigit
Accept "Informe sua senha: " to cPassDigit
nCountUser := Len(cUserDigit)
nCountPass := Len(cPassDigit)

IF cUserSys = cUserDigit .and. cPassSys = cPassDigit .and. nCountUser > 0 .and. NCountPass > 0
    lValid := .T.
EndIf 

If lValid = .F.
    QOut("****Usuario ou senha invalidos, tente novamente*****")
EndIf
Enddo

QOut("***Acesso Liberado***")


Return Nil 

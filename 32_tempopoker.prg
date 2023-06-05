// Exercicio 32
// Tempo de duracao de tempo do jogo de poker 

Function Main()

// Variaveis 
Local dDTIni := CTOD("")
Local dDTFim := Date()
Local cHRIni := 0
Local cHRFim := Time()
Local nDias := 0
Local cHoras := ""
Local iHorasInt := 0
Local iTempo := 0
Local iHRIniValid := 0
Local iHRFimValid := 0 


SET CONSOLE ON
Set(_SET_DATEFORMAT,"DD/MM/YYYY")
Set(_SET_TIMEFORMAT,"HH:MM")


// Informacao 
Qout ("Data Atual:  " )
QOut (DATE())
QOut ("Hora Atual  ")
QOut (Time())

Accept ("Informe a data do incio do jogo: ") to dDTIni
Accept ("Informe a hora do incio do jogo: ") to cHRIni

//Calculos
nDias := Day(dDTFim) - (Day(CTOD(dDTIni))) 
cHoras := ELAPTIME(cHRIni,cHRFim)
iHorasInt := Val(SubStr(cHoras,1,2))

IF nDias > 1
   iTempo := (nDias*24)+iHorasInt
   Qout ("Dias >1")
EndIf 

IF nDias = 1
    iHRIniValid := Val(SubStr(cHRIni,1,2))
    iHRFimValid := Val(SubStr(cHRFim,1,2))
    IF iHRFimValid < iHRIniValid 
       iTempo := iHRFimValid + (24 - iHRIniValid)
       Qout ("Dias =1 e -24 Horas")
    Else
       iTempo := (nDias*24)+iHorasInt
        Qout ("dias =1 e +24 Horas")
    EndIf
EndIf 


If nDias = 0
    iTempo := iHorasInt
     Qout ("Dias = 0 ")
EndIf
    

//Exibir
Qout ("Data Inicial")
QOut (dDTIni)
QOut ("Hora Inicial: " + cHRIni)
Qout ("Data Fim")
QOut (dDTIni)
QOut ("Hora Final: " + cHRFim)

//Condicao 
IF iTempo > 24
    QOut ("*****O jogo passou do tempo máximo permitido!!!*****")
    QOut ("****Tempo Máximo de horas****")
    QOut ("****Vá Embora para a casa****")
    QOut ("****Obrigado e volte Sempre****")
    QOut (Str(iTempo))
    QOut (Str(nDias))
EndIf

//Exibir
QOut ("Total de Horas do jogo:  " + Str(iTempo))


Return Nil



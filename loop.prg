
Set Procedure to Lib_MsgLoad.prg

Function Main()

Local nLoop := 0
Local nCount := 0
Local cMsgInform := ''
Local iQtdeMsgInform := 1

SET CONSOLE ON
Set(_SET_DATEFORMAT,"DD/MM/YYYY")
Set(_SET_TIMEFORMAT,"HH:MM:SS")
//SET WRAP ON
SETMode (10,50)

While nLoop = 0 
nLoop := 1
nLoop := 0 
QOut (TIME ())
QOut (Date ())
Qout (nCount)

cMsgInform := 'Dara e hora'
MsgLoad(cMsgInform,iQtdeMsgInform)

//QOut ("Exemplo de Loop Infinito")
//QOut ("Contador" + Str(nCount))
//Sleep(1)
//Inkey(1)
nCount ++

Enddo 

Return Nil

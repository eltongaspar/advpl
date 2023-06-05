Function Main()

Local nLoop := 0
Local nCount := 0
SET CONSOLE ON
//SET WRAP ON
SETMode (10,50)

While nLoop = 0 
nLoop := 1
nLoop := 0 
QOut (TIME ())

QOut ("Exemplo de Loop Infinito")
QOut ("Contador" + Str(nCount))
//Sleep(1)
nCount ++

Enddo 

Return Nil

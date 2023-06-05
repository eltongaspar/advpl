// Verifica se A e Divisivel por B

Function isDiv()
Local rDividendo := -1
Local rDivisor := -1
Local rResult := 0

While rDividendo <= 0
	Accept("Informe o Dividendo(A)=  ") to rDividendo
	rDividendo := Val(rDividendo)
Enddo


While rDivisor <= 0
	Accept("Informe o Divisor(B)=  ") to rDivisor
	rDivisor := Val(rDivisor)
Enddo

rResult := Mod(rDividendo,rDivisor)

If rResult = 0 
	QOut("*******A (Dividendo) e Divisivel por B (Divisor)*******")
EndIf

If rResult > 0 
	QOut("xxxxxxxA (Dividendo) nao e Divisivel por B (Divisor)xxxxxxx")
EndIf


Return (rResult)

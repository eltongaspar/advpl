// Lib Codigo Morse 

Function CodMorse()

Local cText := ""
Local cMorse := ""
Local cTradut := ""
Local cConvertMorse := ''
Local iCont := 0
Local iQtdeCarc := 0
Local cCaract := ""

QOut("Tradutor Morse")
Accept("Informe o Texto para Exibir o Codigo Morse)  ") to cText
Accept("Informe o Codigo Morse para Exibir o Texto)  ") to cMorse

iQtdeCarc := Len(cText)
iCont := 1
While iCont <= iQtdeCarc
	cCaract := SubStr(cText,iCont,1)

	If cCaract = "A" .or. cCaract = "a"
		cConvertMorse := cConvertMorse + ".-" + Space(1)

	EndIf 

	If cCaract = "B" .or. cCaract = "b"
		cConvertMorse := cConvertMorse + "-..." + Space(1)

	EndIf 

	If cCaract = "C" .or. cCaract = "c"
		cConvertMorse := cConvertMorse + "-.-." + Space(1)

	EndIf 

	If cCaract = "D" .or. cCaract = "d"
		cConvertMorse := cConvertMorse + "-.." + Space(1)

	EndIf 

	If cCaract = "E" .or. cCaract = "e"
		cConvertMorse := cConvertMorse + "." + Space(1)

	EndIf 

	If cCaract = "F" .or. cCaract = "f"
		cConvertMorse := cConvertMorse + "..-." + Space(1)

	EndIf 

	If cCaract = "G" .or. cCaract = "g"
		cConvertMorse := cConvertMorse + "--." + Space(1)

	EndIf 

	If cCaract = "H" .or. cCaract = "h"
		cConvertMorse := cConvertMorse + "...." + Space(1)

	EndIf 

	If cCaract = "I" .or. cCaract = "i"
		cConvertMorse := cConvertMorse + ".." + Space(1)

	EndIf 

	If cCaract = "J" .or. cCaract = "j"
		cConvertMorse := cConvertMorse + ".---" + Space(1)

	EndIf 

	If cCaract = "K" .or. cCaract = "k"
		cConvertMorse := cConvertMorse + "-.-" + Space(1)

	EndIf 

	If cCaract = "L" .or. cCaract = "l"
		cConvertMorse := cConvertMorse + ".-.." + Space(1)

	EndIf 

	If cCaract = "M" .or. cCaract = "m"
		cConvertMorse := cConvertMorse + "--" + Space(1)

	EndIf 

	If cCaract = "N" .or. cCaract = "n"
		cConvertMorse := cConvertMorse + "-." + Space(1)

	EndIf 

	If cCaract = "O" .or. cCaract = "o"
		cConvertMorse := cConvertMorse + "---" + Space(1)

	EndIf 

	If cCaract = "P" .or. cCaract = "p"
		cConvertMorse := cConvertMorse + ".--." + Space(1)

	EndIf 

	If cCaract = "Q" .or. cCaract = "q"
		cConvertMorse := cConvertMorse + "--.-" + Space(1)

	EndIf 

	If cCaract = "R" .or. cCaract = "r"
		cConvertMorse := cConvertMorse + ".-." + Space(1)

	EndIf 

	If cCaract = "S" .or. cCaract = "s"
		cConvertMorse := cConvertMorse + "..." + Space(1)

	EndIf 

	If cCaract = "T" .or. cCaract = "t"
		cConvertMorse := cConvertMorse + "-" + Space(1)

	EndIf 

	If cCaract = "U" .or. cCaract = "u"
		cConvertMorse := cConvertMorse + "..-" + Space(1)

	EndIf 

	If cCaract = "V" .or. cCaract = "v"
		cConvertMorse := cConvertMorse + "...-" + Space(1)

	EndIf 

	If cCaract = "W" .or. cCaract = "w"
		cConvertMorse := cConvertMorse + ".--" + Space(1)

	EndIf 

	If cCaract = "X" .or. cCaract = "x"
		cConvertMorse := cConvertMorse + "-..-" + Space(1)

	EndIf 

	If cCaract = "Y" .or. cCaract = "y"
		cConvertMorse := cConvertMorse + "-.--" + Space(1)

	EndIf 

	If cCaract = "Z" .or. cCaract = "z"
		cConvertMorse := cConvertMorse + "--.." + Space(1)

	EndIf 

		If cCaract = "Z" .or. cCaract = "z"
		cConvertMorse := cConvertMorse + "--.." + Space(1)

	EndIf 


	If cCaract = "1"
		cConvertMorse := cConvertMorse + "·----" + Space(1)

	EndIf 


	If cCaract = "2"
		cConvertMorse := cConvertMorse + "··---" + Space(1)

	EndIf 
	If cCaract = "3"
		cConvertMorse := cConvertMorse + "···--" + Space(1)

	EndIf 
	If cCaract = "4"
		cConvertMorse := cConvertMorse + "····-" + Space(1)

	EndIf 
	If cCaract = "5" 
		cConvertMorse := cConvertMorse + "·····" + Space(1)

	EndIf 
	If cCaract = "6"
		cConvertMorse := cConvertMorse + "-····" + Space(1)

	EndIf 
	If cCaract = "7"
		cConvertMorse := cConvertMorse + "--···" + Space(1)

	EndIf 
	If cCaract = "8"
		cConvertMorse := cConvertMorse + "---··" + Space(1)

	EndIf 
	If cCaract = "9"
		cConvertMorse := cConvertMorse + "----·" + Space(1)

	EndIf 

	If cCaract = "0"
		cConvertMorse := cConvertMorse + "-----" + Space(1)

	EndIf 
	iCont++
Enddo

//Analisa Codio Morse Informado 
	If cMorse = ".-" 
		cTradut := "A,a"
	EndIf 

	If cMorse = "-..." 
		cTradut := "B,b"
	EndIf 

	If cMorse = "-.-." 
		cTradut := "C,c"
	EndIf 

	If cMorse = "-.." 
		cTradut := "D,d"
	EndIf 

	If cMorse = "." 
		cTradut := "E,e"
	EndIf 

	If cMorse = "..-." 
		cTradut := "F,f"
	EndIf 

	If cMorse = "--." 
		cTradut := "G,g"
	EndIf 

	If cMorse = "...." 
		cTradut := "H,h"
	EndIf 

	If cMorse = ".." 
		cTradut := "I,i"
	EndIf 

	If cMorse = ".---" 
		cTradut := "J,j"
	EndIf 

	If cMorse = "-.-" 
		cTradut := "K,k"
	EndIf 

	If cMorse = ".-.." 
		cTradut := "L,l"
	EndIf 

	If cMorse = "--" 
		cTradut := "M,m"
	EndIf 

	If cMorse = "-." 
		cTradut := "N,n"
	EndIf 

	If cMorse = "---" 
		cTradut := "O,o"
	EndIf 

	If cMorse = ".--." 
		cTradut := "P,p"
	EndIf 

	If cMorse = "--.-" 
		cTradut := "Q,q"
	EndIf 
	If cMorse = ".-." 
		cTradut := "R,r"
	EndIf 

	If cMorse = "..." 
		cTradut := "S,s"
	EndIf 

	If cMorse = "-" 
		cTradut := "T,t"
	EndIf 

	If cMorse = "..-" 
		cTradut := "U,u"
	EndIf 

	If cMorse = "...-" 
		cTradut := "V,v"
	EndIf 

	If cMorse = ".--" 
		cTradut := "W,w"
	EndIf 

	If cMorse = "-..-" 
		cTradut := "X,x"
	EndIf 

	If cMorse = "-.--" 
		cTradut := "Y,y"
	EndIf 

	If cMorse = "--.." 
		cTradut := "Z,z"
	EndIf 

	If cMorse = "·----" 
		cTradut := "1"
	EndIf 

	If cMorse = "··---" 
		cTradut := "2"
	EndIf 

	If cMorse = "···--" 
		cTradut := "3"
	EndIf 

	If cMorse = "····-" 
		cTradut := "4"
	EndIf 

	If cMorse = "·····" 
		cTradut := "5"
	EndIf 

	If cMorse = "-····" 
		cTradut := "6"
	EndIf 

	If cMorse = "--···" 
		cTradut := "7"
	EndIf 

	If cMorse = "---··" 
		cTradut := "8"
	EndIf 

	If cMorse = "----·" 
		cTradut := "9"
	EndIf

	If cMorse = "-----" 
		cTradut := "0"
	EndIf 


//Fim Codigo Morse

QOut("Texto em Codigo Morse  "  + (cConvertMorse))
QOut("Codigo Morse Caracter:  " + (cTradut))
Return (cTradut,cMorse)

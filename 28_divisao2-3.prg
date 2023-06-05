// Exercicio 28 / 29 
//Ler 4 numeros e apresentar os divisiveis por 2 e 3
//Alert(cValToChar(Len(aLetras)))   // Exibe o tamanho da matriz

Function Main()

// Variaveis 
Local aNum := {0,0,0,0}
Local aDiv2 := {0,0,0,0}
Local aDiv3 := {0,0,0,0}
Local nCount := 0

//Informacao 
Accept ("Informe Numero 1:  ") to aNum[1]
Accept ("Informe Numero 2:  ") to aNum[2]
Accept ("Informe Numero 3:  ") to aNum[3]
Accept ("Informe Numero 4:  ") to aNum[4]

// Converter
aNum[1] := Val(aNum[1])
aNum[2] := Val(aNum[2])
aNum[3] := Val(aNum[3])
aNum[4] := Val(aNum[4])

//Calculos
aDiv2[1]  := Mod(aNum[1],2)
aDiv2[2]  := Mod(aNum[2],2)
aDiv2[3]  := Mod(aNum[3],2)
aDiv2[4]  := Mod(aNum[4],2)

aDiv3[1]  := Mod(aNum[1],3)
aDiv3[2]  := Mod(aNum[2],3)
aDiv3[3]  := Mod(aNum[3],3)
aDiv3[4]  := Mod(aNum[4],3)

//Exibir / Condicao
QOut ("Resto Div 1:  " + Str(aDiv2[1]))
QOut ("Resto Div 2:  " + Str(aDiv2[2]))
QOut ("Resto Div 3:  " + Str(aDiv2[3]))
QOut ("Resto Div 4:  " + Str(aDiv2[4]))

QOut ("Numero 1: " + Str(aNum[1]))
QOut ("Numero 2: " + Str(aNum[2]))
QOut ("Numero 3: " + Str(aNum[3]))
QOut ("Numero 4: " + Str(aNum[4]))

Wait ("Agora vamos os numeros Divisiveis por 2")

For nCount := 1 to 4
    If aDiv2[nCount] = 0
    Qout ("Numero :  " + Str(nCount))
    QOut ("Valor:  " + Str(aNum[nCount]))
    EndIf
Next nCount++


Wait ("Agora vamos os numeros Divisiveis por 3")

For nCount := 1 to 4
    If aDiv3[nCount] = 0
    Qout ("Numero :  " + Str(nCount))
    QOut ("Valor:  " + Str(aNum[nCount]))
    EndIf
Next nCount++




Return Nil

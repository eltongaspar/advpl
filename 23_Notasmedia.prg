// Exercio 23
// Notas Escolares (4) + Media
// Exibir Notas, Medias e se Aprovado >5  ou Reprovado <5 

Function Main()

//Variavies 
Local rNota1 := 0
Local rNota2 := 0
Local rNota3 := 0
Local rNota4 := 0
Local rMedia := 0

// Informacao
Accept ("Informe a Nota 1:  ") to rNota1
Accept ("Informe a Nota 2:  ") to rNota2
Accept ("Informe a Nota 3:  ") to rNota3
Accept ("Informe a Nota 4:  ") to rNota4

//Converter
rNota1:= Val(rNota1)
rNota2:= Val(rNota2)
rNota3:= Val(rNota3)
rNota4:= Val(rNota4)

//Calculos
rMedia := (rNota1 + rNota2 + rNota3 + rNota4) / 4

//Condicao 
If rMedia >= 5 
    QOut ("Parabens!!!!! Aprovado com:  " + Str(rMedia))
Else 
    QOut ("Reprovado!!!!! Precisa melhorar:  " + Str(rMedia))
EndIf 

//Exibir
QOut ('Nota 1:  ' + Str(rNota1)) 
QOut ('Nota 2:  ' + Str(rNota2)) 
QOut ('Nota 3:  ' + Str(rNota3)) 
QOut ('Nota 4:  ' + Str(rNota4)) 
QOut ('Media:  ' + Str(rMedia)) 

Return Nil

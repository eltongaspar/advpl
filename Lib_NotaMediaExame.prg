// Exercio 63
// Notas Escolares (4) + Media
// Exibir Notas, Medias e se Aprovado >7 ou Reprovado <7 com Exame de reprova 

Function NotaMediaExame()

//Variavies 
Local rNota1 := -1
Local rNota2 := -1
Local rNota3 := -1
Local rNota4 := -1
Local rMedia := -1
Local rExame := -1
Local rNMEdia := 0
Local lValid := .F.


// Informacao

While rNota1 < 0 .or. rNota1 > 10 .or. lValid = .F. 
    Accept ("Informe a Nota 1:  ") to rNota1

    lValid := IsDigit(rNota1)
    rNota1:= Val(rNota1)

Enddo

lValid := .F.
While rNota2 < 0 .or. rNota2 > 10 .or. lValid = .F.
    Accept ("Informe a Nota 2:  ") to rNota2
    
    lValid := IsDigit(rNota2)
    rNota2:= Val(rNota2)
    
    
Enddo

lValid := .F.
While rNota3 < 0 .or. rNota3 > 10 .or. lValid = .F.
    Accept ("Informe a Nota 3:  ") to rNota3

    lValid := IsDigit(rNota3)
    rNota3:= Val(rNota3)
  
    
Enddo

    
lValid := .F.
While rNota4 < 0 .or. rNota4 > 10 .or. lValid = .F.
    Accept ("Informe a Nota 4:  ") to rNota4
    
    lValid := IsDigit(rNota4)
    rNota4:= Val(rNota4)
  
    
Enddo

//Calculos
rMedia := (rNota1 + rNota2 + rNota3 + rNota4) / 4

//Condicao 
If rMedia >= 7 
    QOut ("Parabens!!!!! Aprovado com:  " + Str(rMedia))
Else 
    QOut ("Reprovado!!!!! Fazer um novo Exame:  " + Str(rMedia))
   
    lValid := .F.
    While rExame < 0 .or. rExame > 10 .or. lValid = .F.
    Accept ("Informe a Nota do Exame:  ") to rExame
    
    lValid := IsDigit(rExame)
    rExame:= Val(rExame)
    
    Enddo

    rNMedia := (rNota1 + rNota2 + rNota3 + rNota4 + rExame) / 5

EndIf 

//Exibir
QOut ('Nota 1:  ' + Str(rNota1)) 
QOut ('Nota 2:  ' + Str(rNota2)) 
QOut ('Nota 3:  ' + Str(rNota3)) 
QOut ('Nota 4:  ' + Str(rNota4)) 
QOut ('Media:  ' + Str(rMedia)) 

If rExame > 0
    QOut ("A Nota do seu Exame e:  " + Str(rExame))
EndIf
    

//Condicao 
If rNMedia >= 5 .And. rMedia < 7
    QOut ("Parabens!!!!! Aprovado em Exame, sua nova Media e:  " + Str(rNMedia))
EndIf

If rMedia < 5 .And. rMedia < 7
    QOut ("Reprovado na Media Geral!!!! Fim da linha:(  " + Str(rMedia)) 
EndIf


Return Nil

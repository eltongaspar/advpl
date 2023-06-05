// Exercicio 40 
// Triangulos Isosceles , Escaleno ou Equilatero 

Function Main()

// Variaveis 
Local cA := ""
Local cB := ""
Local cC := ""

//Exibir
Accept("Informa valor A do Trinagulo:  ") to cA
Accept("Informa valor B do Trinagulo:  ") to cB
Accept("Informa valor C do Trinagulo:  ") to cC

//Condicao 
//Valida Triangulo Equilatero, só uma possibilidade 
If cA = cB .and. cA = cC .and. cB = cC 
    QOut("O triangulo e Equilatero, todos lados iguais")
EndIf 

//Valida Triangulo Escaleno, só uma possibilidade
If cA <> cB .and. cA <> cC .and. cB <> cC 
    QOut("O triangulo e Escaleno, todas medidas sao  <>")
EndIf 



//Valida Triangulo Isoscele, Alternativa A com c<>
If cA = cB .and. cA <> cC .and. cB <> cC
    QOut("O triangulo e Isosceles, as Alturas sao iguais e a Base e  <>1")
EndIf 

//Valida Triangulo Isoscele, Alternativa A com B<>
If cA = cC .and. cA <> cB .and. cB <> cC
    QOut("O triangulo e Isosceles, as Alturas sao iguais e a Base e  <>2")
EndIf 


//Valida Triangulo Isoscele, Alternativa C com B<>
If cB = cC .and. cB <> cA .and. cC <> cA
    QOut("O triangulo e Isosceles, as Alturas sao iguais e a Base e  <>3")
EndIf 



Return Nil 

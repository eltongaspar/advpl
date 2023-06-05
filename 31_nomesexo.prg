// Exercio 31
// Apresentar o sexo e nome da pessoa Mas ou Fem

Function Main()
Local cSexo := ""
Local cNome := ""

Accept ("Informe o Sexo M ou F: ") to cSexo 

While cSexo <> "M" .and. cSexo <> "F"
    Accept ("Informe o sexo corretamete M ou F  ") to cSexo 
Enddo

Accept ("Informe seu nome:  ") to cNome

If cSexo = "M"
    Qout ("Ilmo Sr. ")
    QOut (cNome)
Else 
    Qout ("Ilma. Sra: ")
    QOut (cNome)
EndIf

Return Nil

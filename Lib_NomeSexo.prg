// Exercio 31
// Apresentar o sexo e nome da pessoa Mas ou Fem

Function NomeSexo()
Local cSexo := ""
Local cNome := ""
Local iQtdeLet := 0

Accept ("Informe o Sexo M ou F: ") to cSexo 

While cSexo <> "M" .and. cSexo <> "F"
    Accept ("Informe o sexo corretamete M ou F  ") to cSexo 
Enddo

While iQtdeLet <= 0 
    Accept ("Informe seu nome:  ") to cNome
    iQtdeLet := Len(cNome)
Enddo 

If cSexo = "M"
    Qout ("Ilmo Sr. ")
    QOut (cNome)
Else 
    Qout ("Ilma. Sra: ")
    QOut (cNome)
EndIf

Return (Cnome,cSexo)

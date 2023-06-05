Function Main()

Local cCod := ""
Local cNome := ""
Local cSexo := ""
Local cDepto := ""
Local cFuncao := ""
Local cSal := 0
Local cNDep := 0
Local cAdic := 0
Local cVale := ""
Local cTipo := ""

Accept ("Informe o codigo:") to cCod
Accept ("Informe o nome:") to cNome
Accept ("Informe o Sexo:") to cSexo 
Accept ("Informe o Deto:") to cDepto
Accept ("Informe o Funcao:") to cFuncao
Accept ("Informe o Salario:") to cSal 
Accept ("Informe o numero de dependentes:") to cNDep 
Accept ("Informe o Adicional:") to cAdic
Accept ("Informe se tem Vale Transporte Sim(S) ou Nao(N):") to cVale
Accept ("Informe o Tipo Sanguinio(A,B,AB,O):") to cTipo

QOut ("Codigo: " +               cCod)
QOut ("Nome: " +                 cNome)
QOut ("Sexo: " +                 SubStr(cSexo,1,1))
QOut ("Depto: " +                cDepto)
QOut ("Funcao: " +               cFuncao)
QOut ("Salario: " +              cSal)
QOut ("Depedentes: " +           cNDep)
QOut ("Adicional: " +            cAdic)
QOut ("Vale Transporte(S/N): " + cCod)
QOut ("Tipo Sangue: " +          SubStr(cTipo,1,2))

Wait "Pressione uma tecla para finalizar."

Return Nil


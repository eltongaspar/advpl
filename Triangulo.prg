//Request HB_GT_WIN_DEFAULT

Function Main ()

Local nBase := 0
Local nAltura := 0
Local nArea := 0
Local nHipotenusa := 0
Local nCateto1 := 0
Local nCateto2 := 0

Accept ("Informe a Base do Triangulo /_\ ") to nBase
Accept ("Informe a Altura do Trianglo /_\") to nAltura

nBase := Val(nBase)
nAltura := Val(nAltura)
nArea :=  ((nBase-nAltura)/2)

QOut ("A area do Triangulo e: " + Str(nArea) + (" /_\ "))

Accept ("Informe o Catelo Adjente do Triangulo /_\") to nCateto1
Accept ("Informe o Catelo Oposto do Triangulo /_\") to nCateto2

nCateto1 := Val(nCateto1)
nCateto2 := Val(nCateto2)
nHipotenusa := SQRT((nCateto1^2) + (nCateto2^2))

QOut ("A Hipotenusa do Triangulo e: " + Str(nHipotenusa) + (" /_\ "))

Wait ("Agardecemos")


Return Nil

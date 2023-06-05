//Request HB_GT_WIN_DEFAULT

Function Main()

local nValor := 0
local cValor := ""
local dDatanasc := CTOD("")
local cNome := +Space(50)
local nIdade 
local dDataatual := Date()
local nPercDesc := 0.125
local nVlDesc := 0
local nVlPagar := 0
Local cCPF := +Space(11)
Set(_SET_DATEFORMAT,"dd/mm/yyyy")

Accept ("Informe o valor: ") to cValor 
Accept ("Informe a data de seu nasciemto: DD/MM/AAAA ") to dDatanasc
Accept ("Informe o nome:") to cNome
Accept ("Informe seu CPF, somente números: ") to cCPF
AllTrim(cNome)

nValor := Val(cValor)

//Idade
nIdade := (YEAR(dDataatual)-Year(CTOD(dDatanasc)))

If nIdade >= 60 
QOut ("Parabens voce tera um desconto de 12,5")
nVLDesc := (nValor*nPercDesc)
Else 
QOut ("Sem desconto meu jovem")
nVlDesc := 0
Endif

nVlpagar := nValor - nVlDesc


QOut ("**********************************************")
QOut ("Valor Total RS"+Str(nValor))
Qout (dDataNasc)
Qout ("Cliente   " + cNome)
QOut ("Sua idade e" + Str(nIdade))
QOut ("O seu desconto e RS" + Str(Round(nVlDesc,2)))
QOut ("O Valor a Pagar e RS" + Str(Round(nVlPagar,2)))
Qout ("Total Caracteres Nome" +  Str(Len(cNome)))
QOut (SubStr(cCPF,1,3) + "******" + SubStr(cCPF,10,2))
QOut ("************************************************")

Wait ("Pressione uma tecla para finalizar.")

RETURN nil
 


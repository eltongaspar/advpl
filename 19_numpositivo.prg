// Exercio 19 
// Converter numero negativo em positivo 

Function Main()

//Variavel
Local iNum := 0
Local INumIF := 0

//Informacao
Accept ("Digite um valor:") to iNum

//Conversao
iNum:= Val(iNum)
INumIF := iNum

//Verificando se Numero é Negativo e convertendo em positivo
If  iNumIF < 0 
    INumIF := iNum*-1
Else 
    iNumIf := iNumIf
ENDIF

// Conertendo numero com funcao 
Inum := ABS(Inum)

//Exibir 
QOut ("Numero Funcao: " + Str(iNum))
QOut ("Numero SE: " + Str(iNumIf))

Return Nil 


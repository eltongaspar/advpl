// Exercio 01 
// Soma de numeros positivos 

Function Main()

//Declaracao de variaveis 
Local iValor1 := 0
Local iValor2 := 0
Local iSoma := 0
Local iSub := 0
Local iProduto := 0
Local iQuociente:= 0

//Avisos 
QOut ("Olá, iremos solicitar dois numeros inteiros e positivos")
QOut ("Se o numeros estiverem fora do padrao, serão corrigidos pelos Sistema.")

//Informe os valores
Accept ("Informe um valor interiro positivo:  ") to iValor1
Accept ("Informe um valor interiro positivo:  ") to iValor2

//Correcao dos numeros para inteiros e positivos
// ABS - conerte negativos para positivos
//Round - ajuste de casas decimas
iValor1 := ABS(Round(Val(iValor1),0))
iValor2 := ABS(Round(Val(iValor2),0))


//Calculos ////////////////aritimeticos
iSoma :=  iValor1 + iValor2
iSub := iValor1 - iValor2
iProduto := iValor1 * iValor2
iQuociente := iValor1 / iValor2

//Exibicao dos Resultados 
QOut ("Valor1 e:       " + Str(iValor1))
QOut ("Valor2 e:       " + Str(iValor2))
QOut ("Soma e:         " + Str(iSoma))
QOut ("Subtracao e:    " + Str(iSub))
QOut ("O Produto e:    " + Str(iProduto))
QOut ("O Quociente e:  " + Str(iQuociente))
Return Nil


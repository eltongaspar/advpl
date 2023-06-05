//Exercicio 02 
// Converter Celsius em Fahrenheit

Function Main()

Local rCelsius := 0
Local rFahrenheit := 0
Local rFahrenheit2 := 0

//Informe os valores
Accept ("Informe a temperatura Celsius:  ") to rCelsius 
rCelsius := Val(rCelsius)
//Conversão 
rFahrenheit := Fahrenheit(rCelsius)
rFahrenheit2 := (9* rCelsius + 160) / 5

//Exibe Resultado - Com funcao e sem funcao
QOut ("A temperatura em Fahrenheit: " + Str(rFahrenheit))
QOut ("A temperatura em Fahrenheit2: " + Str(rFahrenheit2))


Return Nil

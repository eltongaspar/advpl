//Exercicio 03 
// Converter Fahrenheit em Celsius

Function Main()

Local rFahrenheit := 0
Local rCelsius := 0
Local rCelsius2 := 0

//Informe os valores
Accept ("Informe a temperatura Fahrenheit:  ") to rFahrenheit
rFahrenheit := Val(rFahrenheit)
//Conversão 
rCelsius := Celsius(rFahrenheit)
rCelsius2 := (rFahrenheit- 32) * (5/9)

//Exibe Resultado - Com funcao e sem funcao
QOut ("A temperatura em Celsius: " + Str(rCelsius))
QOut ("A temperatura em Celsius2: " + Str(rCelsius2))


Return Nil

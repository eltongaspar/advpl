// Exercicio 33 
// Calculo de jornada de trabalho con horas extras

Function Main()

//Variaveis 
Local rHRTrab := 0
Local rVLHR := 0
Local rHRExtra := 0
Local rJornada := 160
Local rVLSalTot := 0
Local rVLSal := 0
Local rVLExtra := 0
Local rHRExtraAcres := 0.50

// Informacoes
Accept ("Informe o total de horas trabalhadas:  ") to rHRTrab
Accept ("Informe o valor da hora:  ") to rVLHR
 
// Conversao 
rHRTrab := Val(rHRTrab)
rVLHR := Val(rVLHR)

//Condicao 
If rHRTrab > rJornada
    rHRExtra := rHRTrab - rJornada
EndIf 

// Calculo 
rVLSal = (rHRTrab - rHRExtra) * rVLHR
rVLExtra := (rHRExtra * rHRExtraAcres)
rVLSalTot := rVLSal + rVLExtra

//Exibir 
QOut ("Total de Horas Trabalhadas:  " + Str(rHRTrab))
QOut ("Total de Horas Extras:  " + Str(rHRExtra))
QOut ("Total a receber Horas Extras:  " + Str(rVLExtra) )
Qout ("Total Salario:  " + Str(rVLSal))
Qout ("Total a Receber:  " + Str(rVLSalTot))


Return Nil 



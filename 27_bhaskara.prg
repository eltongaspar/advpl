// Exercio 27
// Calculo da Formula de Bhaskara
//

Function Main()

//Variavies 
Local rA := 0
Local rB := 0
Local rC := 0
Local rDelta := 0
Local rX1 := 0
Local rX2 := 0

//Condicao
While rA = 0
    //Informacoes 
    Accept ("Informe valor de A(<>0):  ") to rA
    rA := Val(rA)
Enddo

Accept ("Informe valor de B:  ") to rB
Accept ("Informe valor de C:  ") to rC

//Covertendo 
rB := Val(rB)
rC := Val(rC)

//Calcular Delta -  delta = (b*b)-4*a*c
rDelta := (rB^2)-4*rA*rC

//Verifica Valor de Delta
If rDelta < 0 
    QOut ("Delta Negativo, nao existem Raizes Reais" + Str(rDelta))
ENDIF

//Calculo X1 = (-b+SQTR(Delta))/2*a
//Calculo X2 = (-b-SQTR(Delta))/2*a

If rDelta = 0 
    QOut ("Delta = 0, existem Raizes Reais e Iguais" + Str(rDelta))
    rX1 := (-rB+(SQRT(rDelta)))/2*rA
    rX2 := (-rB-(SQRT(rDelta)))/2*rA
    
    //Exibir
    QOut ("X1 :=  " + Str(rX1))
    QOut ("X1 :=  " + Str(rX2))
    ENDIF

If rDelta > 0 
    QOut ("Delta > 0, existem Raizes Reais e Distintas" + Str(rDelta))
    rX1 := (-rB+(SQRT(rDelta)))/2*rA
    rX2 := (-rB-(SQRT(rDelta)))/2*rA
    //Exibir
    QOut ("X1 :=  " + Str(rX1))
    QOut ("X1 :=  " + Str(rX2))
ENDIF



Wait ("Fim de Programa")

Return Nil

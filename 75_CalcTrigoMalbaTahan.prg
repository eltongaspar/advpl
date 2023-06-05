// Exercicio 75

// Calcular o primeiro e o dobro dos proximos numeros ate N
// O trigo do Homem que Calulva Malba Tahan

SET PROCEDURE TO Lib_CalcTrigoMalbaTahan.prg

Function Main()
Local iQtdeQuadInform := 64
Local iTotCalcInform := 0
Local iQtdeAlg := 0

iTotCalcInform := CalcTrigoMalbaTahan(iQtdeQuadInform)
iTotCalcInform := ROUND(iTotCalcInform,0)
iQtdeAlg := Len(Str(iTotCalcInform))

Qout("O lendario Numero da Anedota do Trigo  do Livo o Homem que Calculava(Malba Tahan)  " + Str(iTotCalcInform))
QOut("Entao, o inves de ouro, prata, palacios, desejo em graos de trigo. Dar-me-as um grao de trigo pela primeira casa, dois pela segunda, quatro pela terceira, oito pela quarta, dezesseis pela quinta, e assim sucessivamente, ate a sexagasima quarta e ultima casa do tabuleiro.")
QOut("O calculo exato possui 20 casas: 18 446 744 073 709 551 615" )
QOut("Calculo do Sistema em Casas Algoritimas  " +  Str(iQtdeAlg))
Return Nil 



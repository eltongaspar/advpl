// Calaculo das Casas de Trigo no Xadres - O homem que Calculava Malba Tahan

Function CalcTrigoMalbaTahan(iQtdeQuadInform)
Local iQtdeQuad := 0
Local iTotCalc := 0

iQtdeQuad := iQtdeQuadInform

iTotCalc := (2^iQtdeQuad) - 1


Return (iTotCalc)

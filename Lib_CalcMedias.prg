// Lib para Calcular Medias de numeros informados 

SET PROCEDURE TO Lib_ValidNum.prg

Function CalcMedias(iQtdeInform)
Local aNums := {}
Local rMedia := 0
Local rTotSoma := 0
Local iQtdeNums := 0
Local iCont := 1
Local iQtde := 0
Local rNumInform := 0

iQtde := iQtdeInform

QOut("Calculos de Medias")

While iCont <= iQtde
    Accept("Informe o Numero:  ") to rNumInform
    ValidNum(rNumInform)
    AAdd(aNums,[iCont])
    aNums[Len(aNums)] := ValidNum(rNumInform)
    iCont++
Enddo 

iCont := 1
While iCont <= iQtde
    rTotSoma := rTotSoma + aNums[iCont]
    iCont++
Enddo

iQtdeNums := Len(aNums)
rMedia := rTotSoma/iQtdeNums

QOut("A Media e:  " + Str(rMedia))
QOut("Qtde de numeros Informados:  " + Str(iQtdeNums))
QOut("A Soma Total e:  " + Str(rTotSoma))
    
QOUT(hb_valtoexp(aNums))

Return (rMedia,aNums)

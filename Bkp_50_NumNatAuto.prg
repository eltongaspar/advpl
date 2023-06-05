// Exercio 50 
// Exibir de modo automatico numeros de 1 a 100 naturais 
// While Enddo For Next For Fixo Endfor



Function Main()

// Variaveis 
Local aNumNat := {}
Local iCont := 0
Local iRepet := 100
Local aResult := {}


aResult := GeraNumNatWhile([aNumNat2])

iCont := 1
iRepet := 100

While iCont <= iRepet
    AAdd(aNumNat,iCont)
    aNumNat[iCont] := iCont
    iCont++
ENDDO

//aResult := aNumNat

QOUT(hb_valtoexp(aNumNat))

QOUT(hb_valtoexp(aResult))



Return Nil 

Static Function GeraNumNatWhile()

Local aNumNat := {}
Local aNumNat2 := {}
Local iCont := 0
Local iRepet := 100
Local aResult := {}



iCont := 1
iRepet := 100

While iCont <= iRepet
    AAdd(aNumNat,iCont)
    aNumNat[iCont] := iCont
    iCont++
ENDDO

aNumNat2 := aNumNat

Return aNumNat2


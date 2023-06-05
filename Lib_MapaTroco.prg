// Lib Mapa do Troco

Function MapaTroco()

Local i200 := 0
Local i100 := 0
local i50 := 0
Local i20 := 0
local i10 :=0 
local i5 :=0 
Local i2 := 0
Local iN200 := 200
Local iN100 := 100
local iN50 := 50
Local iN20 := 20
local iN10 := 10 
local iN5 := 5
Local iN2 := 2
Local rMoedas := 0
Local aTroco := {}
Local rValor := 0
Local iCont := 0
Local iTemp := 0
Accept("Informe o Troco:  ") to rValor

rValor := Val(rValor)
iTemp := rValor

iCont := Len(aTroco) + 1
If rValor >= iN200
    i200 := rValor / iN200
    i200 := Int(i200)
    iTemp := Mod(rValor,iN200)
    Aadd(aTroco, [iCont,1])
    aTroco[Len(aTroco)] := {iN200,i200}
    rValor := iTemp
EndIf 

iCont := Len(aTroco) + 1
If rValor >= iN100 .and. Itemp > 0
    i100 := rValor / iN100
    i100 := Int(i100)
    iTemp := Mod(rValor,iN100)
    Aadd(aTroco, [iCont,1])
    aTroco[Len(aTroco)] := {iN100,i100}
    rValor := iTemp
EndIf 

iCont := Len(aTroco) + 1
If rValor >= iN50 .and. Itemp > 0
    i50 := rValor / iN50
    i50 := Int(i50)
    iTemp := Mod(rValor,iN50)
    Aadd(aTroco, [iCont,1])
    aTroco[Len(aTroco)] := {iN50,i50}
    rValor := iTemp
EndIf 

iCont := Len(aTroco) + 1
If rValor >= iN20 .and. Itemp > 0
    i20 := rValor / iN20
    i20 := Int(i20)
    iTemp := Mod(rValor,iN20)
    Aadd(aTroco, [iCont,1])
    aTroco[Len(aTroco)] := {iN20,i20}
    rValor := iTemp
EndIf 

iCont := Len(aTroco) + 1
If rValor >= iN10 .and. Itemp > 0
    i10 := rValor / iN10
    i10 := Int(i10)
    iTemp := Mod(rValor,iN10)
    Aadd(aTroco, [iCont,1])
    aTroco[Len(aTroco)] := {iN10,i10}
    rValor := iTemp
EndIf 

iCont := Len(aTroco) + 1
If rValor >= iN5 .and. Itemp > 0
    i5 := rValor / iN5
    i5 := Int(i5)
    iTemp := Mod(rValor,iN5)
    Aadd(aTroco, [iCont,1])
    aTroco[Len(aTroco)] := {iN5,i5}
    rValor := iTemp
EndIf 

iCont := Len(aTroco) + 1
If rValor >= iN2 .and. Itemp > 0
    i2 := rValor / iN2
    i2 := Int(i2)
    iTemp := Mod(rValor,iN2)
    Aadd(aTroco, [iCont,1])
    aTroco[Len(aTroco)] := {iN2,i2}
    rValor := iTemp
EndIf 

iCont := Len(aTroco) + 1
If rValor >= 0 .and. Itemp > 0
    rMoedas := rValor
    Aadd(aTroco, [iCont,1])
    aTroco[Len(aTroco)] := {"Moedas",rMoedas}
    rValor := iTemp
EndIf 



QOUT("{Cedula,Qtde} ")
QOUT(hb_valtoexp(aTroco))

Return (aTroco)



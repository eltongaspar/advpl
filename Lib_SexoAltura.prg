// Sexo e Altura

SET PROCEDURE TO Lib_ValidNum.prg

Function SexoAltura(iQtdeInform)

Local rAltura := 0
Local cSexo := ""
Local aListAlt:= {}
Local aListSexo := {}
Local iTotMasc := 0
Local iTotFem := 0
Local rTotAlt := 0
Local iQtde := 1
Local iCont := 1
Local rMenorAlt := 1000
Local rMaiorAlt := 0
Local rMedAltFem := 0
Local rTotAltFem := 0
Local rNumInform :=0 

iQtde := iQtdeInform

While iCont <= iQtde

    cSexo := ""
    While cSexo <> "M" .and. cSexo <> "F"
        Accept("Informe o Sexo do Paciente Masculino(M) ou Femenino(F)") to cSexo
                     
     
    Enddo 

    Accept("Informe a altura:  ") to rNumInform
    rAltura := ValidNum(rNumInform)
   
    If cSexo = "M"
        AAdd(aListSexo,[iCont])
   	 	aListSexo[Len(aListSexo)] := cSexo

        AAdd(aListAlt,[iCont])
   	 	aListAlt[Len(aListAlt)] := rAltura  

        iTotMasc++
    EndIf 

    If cSexo = "F"
        AAdd(aListSexo,[iCont])
   	 	aListSexo[Len(aListSexo)] := cSexo

        AAdd(aListAlt,[iCont])
   	 	aListAlt[Len(aListAlt)] := rAltura

        rTotAltFem := rTotAltFem + rAltura

        iTotFem++
    EndIf 

    If rAltura < rMenorAlt
        rMenorAlt := rAltura
    EndIf

    If rAltura > rMaiorAlt
        rMaiorAlt := rAltura
    EndIf
    
    rTotAlt := rTotAlt + rAltura
    iCont++
Enddo 

rMedAltFem := rTotAltFem / iTotFem


QOut("A maior Altura e:  " + Str(rMaiorAlt))
QOut("A menor Altura e:  " + Str(rMenorAlt))
QOut("A media da Altura Femenina e:  " + Str(rMedAltFem))
QOut("Total de homens:  " + Str(iTotMasc))




Return(aListAlt,aListSexo)

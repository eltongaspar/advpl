// Calculos de soma de numeros pares e impares 

Function SomaNum(iNumIniInform,iNumFimInform,cTipoInform,cMensagInform,cMensagInformAux)

Local aPar := {}
Local aImpar := {}
Local iNumFim := 0
Local iNumIni := 0
Local iTemp := 0
Local iDiv2 := 2
Local iContPar := 1
Local iContImpar := 1
Local iTotPar := 0
Local iTotImpar := 0
Local iTotGeral := 0
Local cTipo := ''
Local cMensag:= ""
Local cMensagAux := ""

iNumIni := iNumIniInform
iNumFim := INumFimInform
cTipo := cTipoInform
cMensag := cMensagInform
cMensagAux:= cMensagInformAux

While iNumIni <= iNumFim 
iTemp := Mod(iNumIni,iDiv2)

	If iTemp = 0
	AAdd(aPar,[iContPar])
    aPar[Len(aPar)] := iNumIni
    IContPar++
	EndIf

	If iTemp <> 0
	AAdd(aImpar,[iContImpar])
    aImpar[Len(aImpar)] := iNumIni
    IContImpar++
	EndIf
	iNumIni++
Enddo

iNumFim := Len(aPar)
iTemp := 0
iContPar := 1

While iContPar <= iNumFim 
	iTemp := (aPar[iContPar])
	iTotPar := iTotPar + iTemp
	iContPar++
Enddo

iNumFim := Len(aImpar)
iTemp := 0
iContImpar := 1

While iContImpar <= iNumFim 
	iTotImpar := iTotImpar + (aImpar[iContImpar])
	iContImpar++
Enddo

iTotGeral := iTotPar + iTotImpar

Qout(cMensagInform)
QOut(cMensagAux)

If cTipo = "T"
	QOut("Soma Total e: " + Str(iTotGeral))
ENDIF

If cTipo = "P"
	QOut("Soma Par Total e: " + Str(iTotPar))
ENDIF

If cTipo = "I"
	QOut("Soma Impar Total e: " + Str(iTotImpar))
ENDIF

Return (iTotpar,iTotImpar,iTotGeral)



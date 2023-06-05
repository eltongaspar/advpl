// Lib para Randomizar uma Matriz 

Function RandomMat(iQtdeGerInform,iNumMinInform,iNumMaxInfor,aMatriz)
Local iNum := 0
Local iMax := 8
Local iMin := 1
Local iCont := 1
Local nSeed := 1
Local aNumGer := {}
Local iQtdeRepet := 8
Local aMatRandom := {}
Local iValid := 0
Local iQtdePesq := 0
Local iPesq := 0
Local iCont2 := 0
Local iTemp := 0
Local rTemp2 := 0
Local aMTemp := {}

iQtdeRepet := iQtdeGerInform
iMin := iNumMinInform
iMax := iNumMaxInfor
aMatRandom := aMatriz

iCont := 1
While iCont <= iQtdeRepet
	iNum := 0
    iNum := RANDOM(iMin,iMax)

    If iNum > iMin .And. iNum <= iMax
	
		iValid := 0
		iQtdePesq := Len(aNumGer)
		iPesq := iNum
		
			
		If iQtdePesq = 0 .and. iCont = 1
			AAdd(aNumGer,[iCont])
			aNumGer[Len(aNumGer)] := iNum
			iCont++
			iValid := 0
											
		EndIf
		
		
		If iQtdePesq > 0
			For  iCont2 :=1 to iQtdePesq
			
    			IF iPesq = aNumGer[iCont2]
					iValid := 1   
				
    			EndIf 
		
			Next
		EndIf 
		
			
		If iValid = 0
			AAdd(aNumGer,[iCont])
			aNumGer[Len(aNumGer)] := iNum
			
			iCont++
		EndIf
		
		
	EndIf  
	        
Enddo

aNumGer[1] := iMin 


iCont := 1
While iCont <= iQtdeRepet

	iTemp:= aNumGer[iCont]
	rTemp2:= aMatRandom[iTemp]

	AAdd(aMTemp,[iCont])
	aMTemp[Len(aMTemp)] := rTEmp2

	iCont++
	
	
Enddo 

QOut("Posicoes da Matriz Emabaralhadas")
QOUT(hb_valtoexp(aNumGer))
QOut("Valores da Matriz Emabaralhadas")
QOUT(hb_valtoexp(aMTemp))

Return (aMatRandom)

// Notas e Medias de uma turma
// Retorna a maior e menor Nota 

Function NotasMediasTurmaMaiorMenor()

Local aNotas := {}
Local rMaiorNot := 0
Local rMenorNot := 10
Local iQtdeNot := 0
Local rMedia := 0
Local rSomaNot := 0
Local iEsc := 0
Local iNotInform := 0
Local iCont := 1
Local lValidNum := .F.


While iEsc <> 27
	Wait("ESC Sai ou Aperte uma tecla para informar uma Nota")
	iEsc := LastKey()


	If iEsc = 27 

		iCont := 1
		iQtdeNot := Len(aNotas)

		While iCont <= iQtdeNot
			rSomaNot := rSomaNot + aNotas[iCont]
			
			iF aNotas[iCont] > rMaiorNot
			rMaiorNot := aNotas[iCont]
			EndIf 

			IF aNotas[iCont] < rMenorNot
			rMenorNot := aNotas[iCont]
			EndIf 

			iCont++
		Enddo

		rMedia := rSomaNot / iQtdeNot

		QOut("A Maior Nota:  " + Str(rMaiorNot))
		QOut("A Menor Nota:  " + Str(rMenorNot))
		QOut("A Media Geral da Turma e:  " + Str(rMedia))
		QOut("Qtde de Notas Informadas:  " + Str(iQtdeNot))
		BREAK
	EndIf

	Accept("Informe uma Nota:  ") to iNotInform

	lValidNum := IsDigit(iNotInform)
	iNotInform := Val(iNotInform)

	if lValidNum = .T. .and. iNotInform >=0 .and. iNotInform <=10  
		AAdd(aNotas,[iCont])
		aNotas[Len(aNotas)] := iNotInform
		Qout("Aqui!!")
		
	EndIf 
	
	
	
Enddo

Return (rMedia,rSomaNot,aNotas)








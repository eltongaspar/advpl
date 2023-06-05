Function Medalhas()

    Local aMedalhas := {}
    Local nOuro := 0
    Local nPrata := 0
    Local nBronze := 0
    Local nTotalMedalhas := 0
    Local cFim := "F"
    Local iCont := 1
    Local cInformMed := ""
    local iCheck := 0


    DO WHILE cInformMed <> cFim

        iCheck := 0

        Accept("Informe a Medalha:  ") to cInformMed

        If cInformMed == 'B'
            AAdd(aMedalhas,[iCont])
            aMedalhas[Len(aMedalhas)] := cInformMed
            ICont++
            iCheck := 1
	        
            nBronze++
        Endif

        If cInformMed == 'P'
            AAdd(aMedalhas,[iCont])
            aMedalhas[Len(aMedalhas)] := cInformMed
            ICont++
            iCheck := 1

            nPrata++
        Endif

        If cInformMed == 'O'
            AAdd(aMedalhas,[iCont])
            aMedalhas[Len(aMedalhas)] := cInformMed
            ICont++
            iCheck := 1
            nOuro++
        Endif

       
        iF iCheck = 0 .and. cInformMed <> cFim
            QOut("Informe uma Mefalha Valida: B(Bronza) P(Prata) O(Ouro) F(Fim)")
            Loop
        EndIf

         

    end do

 nTotalMedalhas := nBronze + nPrata + nOuro

 QOut("Total Medalhas")
 QOut("Bronze       " + Str(nBronze))
 QOut("Prata        " + Str(nPrata))
 QOut("Ouro         " + Str(nOuro))
 QOut("Total Geral  " + Str(nTotalMedalhas))

RETURN (nBronze,nPrata,nOuro,nTotalMedalhas,aMedalhas)

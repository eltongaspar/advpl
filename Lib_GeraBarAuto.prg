// Gerador de Naipes e Cartas do Baralho


Function GeraBarAuto(iQtdeGerInform,iNumMinInform,iNumMaxInfor)
Local aBarGerAutoTemp := {} //{Numero Carta ,Naipe Numero,"Carta","Naipe"}
Local iCont := 1 // Carta
Local iCont2 := 0 // Naipe - 3 Copas, 4 Ouro, 5 Paus, 6 Espadas
Local iTemp := 0
Local cNaipe :=  ''
Local cCarta := ''
Local iCartaNum := 0
Local iNaipeNum := 0
Local iNumMax := 0
Local iNumMin := 0
Local iQtdeGer := 0
Local iQtdeGer2 := 0
Local lValidCartNum := .T.


//{Carta,Naipe,"Numero","Naipe"}

iCont := 1
iCont2 := 3
iQtdeGer := iQtdeGerInform
iNumMax := iNumMaxInfor
iNumMin := iNumMinInform
iCartaNum := iNumMin
iQtdeGer2 := 6


While iCont <= iQtdeGer
    
    While iCont2 <= iQtdeGer2
        
        If iCont2 = 3
            cNaipe := 'Copas' 
        Endif

        If iCont2 = 4
            cNaipe := 'Ouro' 
        Endif

        If iCont2 = 5
            cNaipe := 'Paus'    
        Endif

        If iCont2 = 6
            cNaipe := 'Espadas'    
        Endif

        If iCartaNum = 101 .Or. iCartaNum = 111 .Or. iCartaNum = 112 .Or. iCartaNum = 113
            If iCartaNum = 101
                cCarta = 'A'
                lValidCartNum := .F. 
            EndIf
                
            If iCartaNum = 111
                cCarta = 'Q'
                lValidCartNum := .F. 
            Endif

            If iCartaNum = 112
                cCarta = 'J'
                lValidCartNum := .F. 
            Endif

            If iCartaNum = 113
                cCarta = 'K'
                lValidCartNum := .F. 
            Endif                                               
        
        Endif 

        If lValidCartNum = .T. 
            cCarta = iCartaNum - 100

        Endif           

        iNaipeNum := iCont2
        AAdd (aBarGerAutoTemp,[iCartaNum])
        aBarGerAutoTemp[Len(aBarGerAutoTemp)] := {iCartaNum,iNaipeNum,cCarta,cNaipe} 
        iCont2++
        lValidCartNum = .T. 
    Enddo

    //Ascan(aBarGerAutoTemp, {|x| x[1] == iCont})
    
    
    cCarta := ''
    iCartaNum++
    iCont2 := 3
    iCont++                         
Enddo



iTemp := Len(aBarGerAutoTemp)
iCont := 1
QOut("******* Baralho Gerado *******")
    
While iCont <= iTemp
Qout(aBarGerAutoTemp[iCont])
iCont++
Enddo

QOUT(hb_valtoexp(aBarGerAutoTemp))


Return (aBarGerAutoTemp)

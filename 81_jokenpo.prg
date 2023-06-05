// Exercicio 81 
// Jogo do Jokenpo

SET PROCEDURE TO Lib_GeraNumAleatMinMax.prg

Function Main()
Local iQtdeGerInform := 1
Local iNumMinInform := 1
Local iNumMaxInfor := 12
Local iNumGer := 0
Local iTec := 0
Local iJog := -1
Local iJogPC := 0
Local iVit := 0
Local iDerrot := 0
Local iEmpat := 0
Local aTemp := {5}
Local cJogPCTexPort := ""
Local cJogPCTextEng := ""
Local cJogTexEng := ""
Local cJogTexPort := ""
Local iIdiom := 0

//##
While iIdiom <> 1 .and. iIdiom <> 2
    Accept ("Escolha o Idima Portugues(1) ou Ingles(2 / Choose your language Portuguese(1)1 or English(2))") to iIdiom
    iIdiom := Val(iIdiom)
Enddo
//##

//##
While iTec <> 27

    iJog := -1    

    //##
    If iIdiom = 1
    Wait("Jogo Jokenpo. Aperte uma Tecla para continuar, ESC para Encerrar")
        iTec := LastKey()
    EndIf
    //##

    //##
    If iIdiom = 2
    Wait("Jokenpo game. Press Key to continue, ESC to End")
        iTec := LastKey()
    EndIf
    //##

    iTec := LastKey()

    //##
    If iTec = 27
        Loop
    EndIf 
    //##

    //##
    If iTec <> 27 

        //##
        While iJog <> 0 .and. iJog <> 5 .and. iJog <> 2
        
            //##
            If iIdiom = 1
                Accept("Pedra(0), Papel(5) ou Tesoura(2)") to iJog
            EndIf 
            //##

            //##
            If iIdiom = 2
                Accept("Rock(0), Paper(5) or Scissors(2)") to iJog
            EndIf 
            //##


            iJog := Val(iJog)

            //##
            If iJog = 0
                cJogTexPort := "Pedra"
                cJogTexEng := "Rock"

            EndIf
            //##

            //##
            If iJog = 5
                cJogTexPort := "Papel"
                cJogTexEng := "Paper"
            EndIf
            //##

            //##
            If iJog = 2
                cJogTexPort := "Tesoua"
                cJogTexEng := "Scissors"
            EndIf
            //##
         //##
        Enddo 

        aTemp := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)
        iNumGer := aTemp[1]

        //##
        If iNumGer > 0 .and. iNumGer <= 4 
            iJogPC := 0
            cJogPCTexPort := "Pedra"
            cJogPCTextEng := "Rock"
        EndIf
        //##

        //##
        If iNumGer > 4 .and. iNumGer <= 8 
            iJogPC := 5
            cJogPCTexPort := "Papel"
            cJogPCTextEng := "Paper"
        EndIf
        //##

        //##
        If iNumGer > 8 .and. iNumGer <= 12 
            iJogPC := 2
            cJogPCTexPort := "Tesoura"
            cJogPCTextEng := "Scissors"
        EndIf
        //##

        //##
        If iJog = iJogPC 
            //##
            IF iIdiom = 1 
                QOut("------- Empate -------")
            EndIf
            //##
               
            //##
            IF iIdiom = 2 
                QOut("------- A Tie -------")
            EndIF
            //##
        iEmpat++
        EndIf
        //##
    
        //##
        If iJog = 0 .and. IJogPC = 5
            //##
            If iIdiom = 1
                Qout("xxxxxxx Voce Perdeu xxxxxxx")
            EndIf
            //##

            //##
            IF iIdiom = 2 
             QOut("------- Loser -------")
            EndIF
            //##

            iDerrot++
        EndIf
        //##

        //##
        If iJog = 0 .and. IJogPC = 2
            //##
            If iIdiom = 1
                Qout("******* Voce Ganhou *******")
            EndIf
            //##

            //##
            IF iIdiom = 2 
                QOut("------- Winner -------")
            EndIF
            //##
        
            iVit++
        EndIf
        //##

        //##
        If iJog = 5 .and. IJogPC = 2
            //##
            If iIdiom = 1
                Qout("xxxxxxx Voce Perdeu xxxxxxx")
            EndIf 
            //##
            
            //##
            IF iIdiom = 2 
                QOut("------- Loser -------")
            EndIF
            //##

            iDerrot++
        EndIf 
        //##

        //##
        If iJog = 5 .and. IJogPC = 0
            //##
            If iIdiom = 1
                Qout("******* Voce Ganhou *******")
            EndIf 
            //##

            //##
            IF iIdiom = 2 
                QOut("------- Winner -------")
            EndIF
            //##

            iVit++
        EndIf
        //##

        //##
        If iJog = 2 .and. IJogPC = 0
            //##
            If iIdiom = 1
            Qout("xxxxxxx Voce Perdeu xxxxxxx")
            EndIf
            //##

            //##
            IF iIdiom = 2 
                QOut("------- Loser -------")
            EndIF
            //##

            iDerrot++            
        EndIf
        //##

        //##
        If iJog = 2 .and. IJogPC = 5
            //##
            If iIdiom = 1
                Qout("******* Voce Ganhou *******")
            EndIf
            //##

            //##
            IF iIdiom = 2 
                QOut("------- Winner -------")
            EndIF
            //##

            iVit++
        EndIf
        //##

        //##
        If iIdiom = 1
            QOut("Voce:  " + (cJogTexPort))
            QOut("PC  " + (cJogPCTexPort))
        EndIf 
        //##
        
        //##
        If iIdiom = 2
            QOut("You:  " + (cJogTexEng))
            QOut("Machine  " + (cJogPCTextEng))
        EndIf
        //##

    EndIf
    //##
Enddo
//##

If iIdiom = 1
QOut ("Total Empates:" +  Str(iEmpat))
QOut ("Total Vitorias:" + Str(iVit))
QOut ("Total Derrotas:" + Str(iDerrot))
EndIf 

If iIdiom = 2
QOut ("Total Draws:" +  Str(iEmpat))
QOut ("Total Wins:" +   Str(iVit))
QOut ("Total Losses:" + Str(iDerrot))
EndIf 




If iVit > iDerrot 
    If iIdiom = 1
        QOut("******* Vencedor *******")
    EndIf

     IF iIdiom = 2 
        QOut("------- Winner -------")
    EndIF

EndIf 

If iVit < iDerrot 

    If iIdiom = 1
        QOut("xxxxxxx Perdeu xxxxxxx")
    EndIf 

    IF iIdiom = 2 
        QOut("------- Loser -------")
    EndIF


EndIf 

If iVit = iDerrot 

    If iIdiom = 1
    QOut("------- Empate -------")
    EndIf 

    IF iIdiom = 2 
        QOut("------- A Tie -------")
    EndIF


EndIf 


Return Nil 

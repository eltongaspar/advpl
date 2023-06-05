Function palmeiras()

    local nResposta := 2
    //Valida a resposta 
    While nResposta   > 0 
        Accept "Quantos Mundiais o Palmeiras tem?" to nResposta
        nResposta := Val(nResposta)
        
        //Avisa se a resposta esta certa 
        If nResposta > 0
        QOut ("Errou,Palmeiras nao tem Mundia, e nao tera!!!!")
        Else 
        QOut ("Certo, Palmeiras tem 0(Zero) Mundiais, e nao tera nunca!!!!!!")
        endif
         QOut ("Ah e outra coisa, 1951 nao conta como mundial!!!!!")
          QOut ("51 e Pinga")
    ENDDO


Return Nil 

Function trocapneus()

    local nPorcas := 0
    //Valida Qtde de parafusos de 3 a 9
    While nPorcas < 3 .Or. nPorcas > 9
        Accept "Informe o total de porcas (De 3 a 9)" to nPorcas
        nPorcas := Val(nPorcas)
        
        //Avisa se a qtde esta certa ou errada
        If nPorcas < 3 .Or. nPorcas > 9
        QOut ("XErrorX")
        Else 
        QOut ("VCertoV")
        endif
    ENDDO
    // Excuta Rotina
    tira_poe (nPorcas,"S")
    QOut ("Troca de Pneus em andamento")
    //Executa Rotina
    tira_poe (nPorcas,"A")
    Qout ("Pneu Trocado com Sucesso")

Return Nil 

Function tira_poe (nPorcas,cOperacao)

    local nCont := 1

    While nCont <= nPorcas // verifica a qtde informada de porcas
        If cOperacao == 'S' //verifia operacao S - soltas
            QOut ("Soltando as porcas dos pneus" +str(nCont))
       
        Else // verifica operação <> S
            QOut ("Apetando as porcas dos pneus" +str(nCont)) 
        endif
     
     nCont ++ //adiciona +1 
    Enddo 
   

Return Nil


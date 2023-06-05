//

//REQUEST HB_GT_WIN_DEFAULT

#define NPOS_OPERACAO 1
#define NPOS_VALOR1   2
#define NPOS_VALOR2   3

Function Main()

    local aProcesso := {}
    local nResult   := 0

//    do while 
        aProcesso := EntraDados()
        nResult := ExecutaOperacao(aProcesso)
        PrintResult(aProcesso[NPOS_OPERACAO], nResult )

        // ACCEPT Deseja continuar
//    enddo

Return NIL

Function EntraDados()

    local cOperacao := "DIV"
    local nValor1 := 15
    local nValor2 := 25

    qout("Valor1, Valor2 e operacao")

    // ACCEPT
    // Validações

return {cOperacao, nValor1, nValor2}

Function ExecutaOperacao(aProcesso)

    local cOperacao := aProcesso[NPOS_OPERACAO]
    local nValor1 := aProcesso[NPOS_VALOR1]
    local nValor2 := aProcesso[NPOS_VALOR2]
    local nResult := 0

    nResult := nValor1 + nValor2

return nResult


function PrintResult(cOperacao, nResult )

    Qout( cOperacao )
    Qout( nResult )

Return nil

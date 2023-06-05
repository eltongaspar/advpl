Function Calculadora()
    local nVal1, nVal2 := 0
    local cOperacao := ""
    local lLoop := .t.

    cOperacao := upper(cOperacao)

    while lLoop == .t.
        ? "** CALCULADORA! **"
        ? "Digite um número, a operação, e em seguida outro número!"
        ? "S para Soma"
        ? "D para Divisão"
        ? "M para Multiplicação"
        ? "Sub para Subtração"
        ACCEPT "Digite o um valor: " to nVal1
        ACCEPT "Escolha a operação a ser executada!: " to cOperacao
        cOperacao := upper(cOperacao)

        ACCEPT "Digite outro valor: " to nVal2
        nVal1 := Val(nVal1)
        nVal2 := Val(nVal2)
            if cOperacao == "S"
                Soma(nVal1, nVal2)
            elseif cOperacao == "D"
                Divis(nVal1, nVal2)
            elseif cOperacao == "M"
                Multi(nVal1, nVal2)
            elseif cOperacao == "SUB"
                Sub(nVal1, nVal2)
             end if

            ACCEPT "Deseja fazer outra operação? (S/N) " to cOperacao
            if upper(cOperacao) == "N"
                lLoop := .f.
            end if
           
    enddo

    // QOUT("")
    // Soma(nVal1, nVal2)
    // Sub(nVal1, nVal2)
    // Multi(nVal1, nVal2)
    // Divis(nVal1, nVal2)
Return .t.

Static Function Soma(nVal1, nVal2)
    local nVal3
    nVal3 := nVal1 + nVal2
    ? "A soma dos valores é: ", ltrim(str(nVal3)), "."
Return nVal3

Static Function Sub(nVal1, nVal2)
    local nVal3
    nVal3 := nVal1 - nVal2
    ? "A diferença entre os valores é: ", ltrim(str(nVal3)), "."
Return nVal3

Static Function Multi(nVal1, nVal2)
    local nVal3
    nVal3 := nVal1 * nVal2
    ? "O produto dos valores é: ", ltrim(str(nVal3)), "."
Return nVal3

Static Function Divis(nVal1, nVal2)
    local nVal3
    nVal3 := nVal1 / nVal2
    ? "O quociente dos valores é: ", ltrim(str(nVal3)), "."
Return nVal3

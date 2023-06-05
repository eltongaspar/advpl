/*
Exemplo02: Ler um Conjunto de valores positivos da pilha de cartões,
obter e exibir o maior valor Lido. Encerrar quando encontrar o cartão
de valor -1 
E1 : Pegue um cartão e copie seu conteúdo para E16
E2 : Pegue um Cartão e copie seu conteúdo para E15
E3 : Se E15 = -1 Vá para E6
E4 : Se E15 for maior que E16 copie E15 para E16
E5 : Volte para E2
E6 : Imprime E16
E7 : Pare

*/

Function Main()

    Local cVal15 := ""
    Local cVal16 := ""
    Local nE15   := 0
    Local nE16   := 0

    Accept "Copie o Valor do Cartao E16: "  To cVal16
    Accept "Copie o Valor do Cartao  E15: " To cVal15

    nE15 := Val(cVal15)
    nE16 := Val(cVal16)

    IF   nE15  = -1
        Qout("Valor Cartao : " + Str(nE16))

    ELSE

        WHILE nE15 <> -1

            IF  nE15 > nE16
                    nE16 := nE15
            END

            Accept "Copie o Valor do Cartao E15: " To cVal15
            nE15 := Val(cVal15)

        ENDDO
        Qout("Valor Cartão : " + Str(nE16))
    ENDIF

Return NIl

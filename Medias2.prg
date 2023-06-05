Function Main()

    // Aqui a rotina faz a declaracao das variaveis
    Local cNota1 := ""
    Local cNota2 := ""
    Local cNota3 := ""
    Local cNota4 := ""
    Local nNota1 := 0
    Local nNota2 := 0
    Local nNota3 := 0
    Local nNota4 := 0
    Local nMedia := 0

    // Aqui a rotina faz a leitura das notas
    ACCEPT "Digite a primeira nota: " TO cNota1
    ACCEPT "Digite a segunda nota: " TO cNota2
    ACCEPT "Digite a terceira nota: " TO cNota3
    ACCEPT "Digite a quarta nota: " TO cNota4

    // Aqui a rotina faz o calculo da media
    nNota1 := Val(cNota1)
    nNota2 := Val(cNota2)
    nNota3 := Val(cNota3)
    nNota4 := Val(cNota4)
    nMedia := ( nNota1 + nNota2 + nNota3 + nNota4 ) / 4

    if nNota1 >= 7
        QOUT("APROVADO no primeiro bimestre: " + Str(nNota1) )
    endif

    if nNota2 >= 7
        QOUT("APROVADO no segundo bimestre: " + Str(nNota2) )
    endif

    if nNota3 >= 7
        QOUT("APROVADO no terceiro bimestre: " + Str(nNota3) )
    endif

    if nNota4 >= 7
        QOUT("APROVADO no quarto bimestre: " + Str(nNota4) )
    endif

    if nMedia >= 7
        QOUT("APROVADO no ANO com media: " + Str(nMedia) )
    else
        QOUT("REPROVADO no ANO com media: " + Str(nMedia) )
    endif

RETURN nil

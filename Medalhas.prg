Function Main()

    Local aMedalha := {"B", "P", "O", "P", "B", "B", "P", "B", "P", "P", "P", "O", "B", "O", "B", "F"}
    Local nContador := 0
    Local nOuro := 0
    Local nPrata := 0
    Local nBronze := 0
    Local nTotalMedalhas := 0
    Local nSoma := 1

    DO WHILE nContador != Len(aMedalha)
        If aMedalha[nContador] == 'B'
            nBronze := val(nBronze) + val(nSoma)
        Endif

        If aMedalha[nContador] == 'P'
            nPrata = val(nPrata) + val(nSoma)
        Endif

        If aMedalha[nContador] == 'O'
            nOuro = val(nOuro) + val(nSoma)
        Endif

        nContador = val(nContador) + val(nSoma)
    end do

     nTotalMedalhas := (Val(nBronze) + Val(nPrata) + Val(nOuro))

    QOut(nBronze)
    QOut(nPrata)
    QOut(nOuro)
    QOut(nTotalMedalhas)

  RETURN .t.

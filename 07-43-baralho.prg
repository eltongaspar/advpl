// Lista 07 Exercicio 43 - Baralho
//
// Carta = {Numero, Naipe, "Descricao", "Naipe"}
//   Numero: 101=A, 102..110 = 2..10, 111=J, 112=Q, 113=K
//   Naipe : 3=Copas, 4=Ouro, 5=Paus, 6=Espadas
//
// Fluxo:
//   1. Monta o baralho (52 cartas) e embaralha (Fisher-Yates, sem repeticao)
//   2. Separa as 21 primeiras cartas em uma matriz 7x3 (colunas 1-7 / 8-14 / 15-21)
//   3. Sorteia uma carta (numero + naipe) e pesquisa sua posicao
//   4. Troca uma carta das 21 por uma carta do restante do baralho
//
// Historico:
//   v1.0 - versao original
//   v2.0 - correcoes: embaralhamento sem repeticao, carta "6 de Copas",
//          ordem J/Q, modo sem loop executando, saida do loop com ESC,
//          pausas de tela funcionando, pesquisa por carta + naipe,
//          troca real de cartas e matriz 7x3 de verdade

#define QTDE_CARTAS   52
#define QTDE_MESA     21
#define MESA_LINHAS    7
#define MESA_COLUNAS   3
#define TECLA_ESC     27

Set Procedure to Lib_MsgLoad.prg
Set Procedure to Lib_FuncaoTelaPergunt.prg
Set Procedure to Lib_FuncaoTela.prg

Function Main()

Local aBaralho   := MontaBaralho()
Local aEmbar     := {}
Local aMesa      := {}
Local aTela      := {.F., .F., 0}   // {lWait, lInkey, iTempInkey}
Local aCartaPesq := {}
Local cOpcao     := ""
Local iInfinito  := 0
Local iPesq      := 0
Local iPosMesa   := 0
Local iPosResto  := 0
Local iMsgQtde   := 5
Local lInfinit   := .F.
Local lSair      := .F.

While iInfinito <> 1 .And. iInfinito <> 2
    Accept ('Deseja ativar Modo Loop: 1-Sim/2-Nao:  ') to cOpcao
    iInfinito := Val(cOpcao)
EndDo

lInfinit := (iInfinito = 1)

If lInfinit
    QOut('Modo Loop ativo - pressione ESC para encerrar ao final da rodada.')
Else
    aTela := FuncaoTelaPergunt()
EndIf

While !lSair

    // 1. Baralho original
    MsgLoad('Carregando Baralho', iMsgQtde)
    ExibeCartas(aBaralho, 1, QTDE_CARTAS)
    Pausa(aTela)

    // 2. Embaralhando (cada carta aparece uma unica vez)
    MsgLoad('Embaralhando Cartas', iMsgQtde)
    aEmbar := Embaralha(aBaralho)
    ExibeCartas(aEmbar, 1, QTDE_CARTAS)
    Pausa(aTela)

    // 3. 21 cartas em matriz 7x3
    MsgLoad('Cartas Embaralhadas (21 Cartas Matriz 7x3)', iMsgQtde)
    aMesa := MontaMesa(aEmbar)
    ExibeMesa(aMesa)
    Pausa(aTela)

    // 4. Pesquisa de carta + naipe aleatorios
    MsgLoad('Pesquisa Auto - Carta e Naipe Aleatorios', iMsgQtde)
    aCartaPesq := aBaralho[hb_RandomInt(1, QTDE_CARTAS)]
    QOut('Carta pesquisada: ' + CartaTexto(aCartaPesq))

    iPesq := Ascan(aEmbar, {|x| x[1] == aCartaPesq[1] .And. x[2] == aCartaPesq[2]})
    QOut('Posicao no baralho embaralhado: ' + hb_ntos(iPesq))
    If iPesq <= QTDE_MESA
        QOut('Esta na mesa - linha ' + hb_ntos(PosLinha(iPesq)) + ;
             ', coluna ' + hb_ntos(PosColuna(iPesq)))
    Else
        QOut('Nao esta entre as 21 cartas da mesa.')
    EndIf
    Pausa(aTela)

    // 5. Troca: uma carta da mesa por uma do restante do baralho
    MsgLoad('Troca Auto - Carta Aleatoria', iMsgQtde)
    iPosMesa  := hb_RandomInt(1, QTDE_MESA)
    iPosResto := hb_RandomInt(QTDE_MESA + 1, QTDE_CARTAS)

    QOut('Sai da mesa (posicao ' + hb_ntos(iPosMesa) + '): ' + CartaTexto(aEmbar[iPosMesa]))
    QOut('Entra (posicao ' + hb_ntos(iPosResto) + ' do baralho): ' + CartaTexto(aEmbar[iPosResto]))

    TrocaCartas(aEmbar, iPosMesa, iPosResto)
    aMesa := MontaMesa(aEmbar)
    Pausa(aTela)

    MsgLoad('Cartas Trocadas Pos. 1 a 7 / 8 a 14 / 15 a 21', iMsgQtde)
    ExibeMesa(aMesa)
    Pausa(aTela)

    // Sem loop: executa uma rodada. Com loop: repete ate ESC.
    If !lInfinit .Or. Inkey() == TECLA_ESC .Or. LastKey() == TECLA_ESC
        lSair := .T.
    EndIf

EndDo

QOut('Fim do programa.')

Return Nil


// Monta o baralho ordenado: A,2..10,J,Q,K x Copas,Ouro,Paus,Espadas
Static Function MontaBaralho()

Local aBar    := {}
Local aDesc   := {"A","2","3","4","5","6","7","8","9","10","J","Q","K"}
Local aNaipes := {"Copas","Ouro","Paus","Espadas"}
Local iCarta  := 0
Local iNaipe  := 0

For iCarta := 1 To Len(aDesc)
    For iNaipe := 1 To Len(aNaipes)
        AAdd(aBar, {100 + iCarta, 2 + iNaipe, aDesc[iCarta], aNaipes[iNaipe]})
    Next
Next

Return aBar


// Embaralha uma copia do baralho (Fisher-Yates): todas as cartas, sem repeticao
Static Function Embaralha(aBar)

Local aRet := AClone(aBar)
Local i    := 0

For i := Len(aRet) To 2 Step -1
    TrocaCartas(aRet, i, hb_RandomInt(1, i))
Next

Return aRet


Static Function TrocaCartas(aBar, nPos1, nPos2)

Local aTmp := aBar[nPos1]

aBar[nPos1] := aBar[nPos2]
aBar[nPos2] := aTmp

Return Nil


// Matriz 7x3: coluna 1 = cartas 1-7, coluna 2 = 8-14, coluna 3 = 15-21
Static Function MontaMesa(aBar)

Local aMesa := Array(MESA_LINHAS, MESA_COLUNAS)
Local i     := 0

For i := 1 To QTDE_MESA
    aMesa[PosLinha(i), PosColuna(i)] := aBar[i]
Next

Return aMesa


Static Function PosLinha(nPos)
Return Int((nPos - 1) % MESA_LINHAS) + 1


Static Function PosColuna(nPos)
Return Int((nPos - 1) / MESA_LINHAS) + 1


Static Function ExibeMesa(aMesa)

Local iLin := 0
Local iCol := 0
Local cLin := ""

QOut(PadR("", 4) + PadR("Coluna 1", 20) + PadR("Coluna 2", 20) + "Coluna 3")
For iLin := 1 To MESA_LINHAS
    cLin := PadR(hb_ntos(iLin) + ".", 4)
    For iCol := 1 To MESA_COLUNAS
        cLin += PadR(CartaTexto(aMesa[iLin, iCol]), 20)
    Next
    QOut(cLin)
Next

Return Nil


Static Function ExibeCartas(aBar, nIni, nFim)

Local i := 0

For i := nIni To nFim
    QOut(PadL(hb_ntos(i), 2) + " - " + PadR(CartaTexto(aBar[i]), 16) + hb_ValToExp(aBar[i]))
Next

Return Nil


Static Function CartaTexto(aCarta)
Return aCarta[3] + " de " + aCarta[4]


Static Function Pausa(aTela)
Return FuncaoTela(aTela[1], aTela[2], aTela[3])

// Lista 07 Exercicio 43

// {Carta,Naipe,"Numero","Naipe"} - 3 Copas, 4 Ouro, 5 Paus, 6 Espadas

Set Procedure to Lib_GeraNumAleatMinMax.prg
Set Procedure to Lib_MsgLoad.prg
Set Procedure to Lib_GeraNumSeqMinMaxMat.prg
Set Procedure to Lib_GeraBarAuto.prg
Set Procedure to Lib_FuncaoTelaPergunt.prg
Set Procedure to Lib_FuncaoTela.prg

Function Main()

Local aBaralho := {;
{101,3,"A","Copas"},{101,4,"A","Ouro"},{101,5,"A","Paus"},{101,6,"A","Espadas"},;  //1-4
{102,3,"2","Copas"},{102,4,"2","Ouro"},{102,5,"2","Paus"},{102,6,"2","Espadas"},; //5-8
{103,3,"3","Copas"},{103,4,"3","Ouro"},{103,5,"3","Paus"},{103,6,"3","Espadas"},; //9-12
{104,3,"4","Copas"},{104,4,"4","Ouro"},{104,5,"4","Paus"},{104,6,"4","Espadas"},; //13-16
{105,3,"5","Copas"},{105,4,"5","Ouro"},{105,5,"5","Paus"},{105,6,"5","Espadas"},; //17-20
{106,3,"4","Copas"},{106,4,"6","Ouro"},{106,5,"6","Paus"},{106,6,"6","Espadas"},; //21-24
{107,3,"7","Copas"},{107,4,"7","Ouro"},{107,5,"7","Paus"},{107,6,"7","Espadas"},; //25-28
{108,3,"8","Copas"},{108,4,"8","Ouro"},{108,5,"8","Paus"},{108,6,"8","Espadas"},; //29-32
{109,3,"9","Copas"},{109,4,"9","Ouro"},{109,5,"9","Paus"},{109,6,"9","Espadas"},; //33-36
{110,3,"10","Copas"},{110,4,"10","Ouro"},{110,5,"10","Paus"},{110,6,"10","Espadas"},; //37-40
{111,3,"Q","Copas"},{111,4,"Q","Ouro"},{111,5,"Q","Paus"},{111,6,"Q","Espadas"},; //41-44
{112,3,"J","Copas"},{112,4,"J","Ouro"},{112,5,"J","Paus"},{112,6,"J","Espadas"},; //45-48
{113,3,"K","Copas"},{113,4,"K","Ouro"},{113,5,"K","Paus"},{113,6,"K","Espadas"}}//49-52
Local aCartas := {}
Local aNaipes := {}
Local aEmbar := {}
Local iQtdeGerInform := 0
Local iNumMinInform := 0
Local iNumMaxInfor := 0
Local iQtde := 0
Local iQtde2 := 0
Local iCont := 0
Local iCont2  := 0
Local iCont3  := 0
Local iCont4 := 0
Local iCarta := 0
Local iNaipe := 0
Local cCartaDesc := ""
Local cNaipeDesc := ""
Local iPesqCarta := 0
Local iPesqNaipe := 0
Local iPesq := 0
Local aMatTemp := {}
Local aMatTemp2 := {}
Local cPesqCartUser := ""
local iPesqNaipeUser := 0
local iQtdeMsgInform := 5
local cMsgInform := ''
local aBarGerAuto := {}
local lWait := .F.
local lInkey := .F.
local iWaittValid := 0
local iInkeytValid := 0
local iTempInkey := 0
local iInfinito := 0
local lInfinit := .F.


While iInfinito <> 1 .And. iInfinito <> 2
    Accept ('Deseja ativar Modo Loop: 1-Sim/2-Nao:  ') to iInfinito

    iInfinito := Val(iInfinito)

    If iInfinito = 1
        lInfinit := .T.
    END

    If iInfinito = 2
        lInfinit := .F.
    End

End do 

If lInfinit = .F.
    FuncaoTelaPergunt()
End

If lInfinit = .F.
    FuncaoTela()
End

While lInfinit = .T.

// Gerando Baralho Auto - 
iQtdeGerInform := 13
iNumMinInform := 101
iNumMaxInfor := 113
cMsgInform := 'Criando Baralho Auto'
MsgLoad(cMsgInform,iQtdeMsgInform)
aBarGerAuto := GeraBarAuto(iQtdeGerInform,iNumMinInform,iNumMaxInfor) 



//Exibe Baralho 
cMsgInform := 'Carregando Baralhos'
MsgLoad(cMsgInform,iQtdeMsgInform)
QOUT(hb_valtoexp(aBaralho))

FuncaoTela()

// Embaralhando Cartas
iQtdeGerInform := 52
iNumMinInform := 101
iNumMaxInfor := 113

cMsgInform := 'Embaralhando Cartas Resultado'
MsgLoad(cMsgInform,iQtdeMsgInform)
aCartas := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)

FuncaoTela()

//Embaralhando Naipes
iQtdeGerInform := 52
iNumMinInform := 3
iNumMaxInfor := 6

cMsgInform := 'Embaralhando Naipes'
MsgLoad(cMsgInform,iQtdeMsgInform)

aNaipes := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)

FuncaoTela()

//Cartas Embaralhadas (Cartas+Naipes)
iQtde := iQtdeGerInform
iCont := 1
iCont2 := 2
iCont3 := 3
iCont4 := 4

// Validando cCartaDesc,cNaipeDesc
While iCont <= iQtde
    iCarta := aCartas[iCont]
    iNaipe := aNaipes[iCont]
    
    iPesqCarta := Ascan( aBaralho , {|x| x[1] == iCarta})
    iPesqNaipe := Ascan( aBaralho , {|x| x[2] == iNaipe},iPesqCarta)
    iPesq := iPesqNaipe
    cCartaDesc := aBaralho[iPesq,iCont3]
    cNaipeDesc := aBaralho[iPesq,iCont4]

    Aadd(aEmbar, [iCont,iCont2,iCont3,iCont4])
    aEmbar[Len(aEmbar)] := {iCarta,iNaipe,cCartaDesc,cNaipeDesc}
    
    iCont++
Enddo

cMsgInform := 'Carregando Baralhos Embaralhados'
MsgLoad(cMsgInform,iQtdeMsgInform)

QOUT(hb_valtoexp(aEmbar))

FuncaoTela()

// Embaralhando 21 Cartas 
iQtde := 21
iCont := 1
iCont2 := 2
iCont3 := 3
iCont4 := 4

cMsgInform := 'Cartas Embaralhadas (21 Cartas)'
MsgLoad(cMsgInform,iQtdeMsgInform)

While iCont <= iQtde
    QOUT(hb_valtoexp(aEmbar[iCont]))
    iCont++
EndDo

FuncaoTela()

// Embaralhando 21 Cartas (Matriz 7x3)
iQtde := 3
iQtde2 := 7
iCont := 1
iCont2 := 3
iCont3 := 21
iCont4 := 4
While iCont <= iQtde
    iCont2 := 1
    While iCont2 <= iQtde2
        Aadd(aMatTemp, [iCont,iCont2])
        aMatTemp[Len(aMatTemp)] := aEmbar[iCont3]
        iCont2++
        iCont3--
    EndDo
    iCont++
Enddo

iCont := 1

cMsgInform := 'Cartas Embaralhadas (21 Cartas Matriz 7x3)'
MsgLoad(cMsgInform,iQtdeMsgInform)

QOUT(hb_valtoexp(aMatTemp))

FuncaoTela()

// Informar ou Gerar Carta para Pesquisa
//Accept("Digite uma Carta para Pesquisa:  ") to cPesqCartUser
//cPesqCartUser := '7'
// Gerar Carta Automatica para pesquisa 
iQtdeGerInform := 1
iNumMinInform := 101
iNumMaxInfor := 113

cMsgInform := 'Pesquisa Auto - Carta Aleatoria'
MsgLoad(cMsgInform,iQtdeMsgInform)

aMatTemp2 := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)
cPesqCartUser := aMatTemp2[1]

//Accept("Digite o Naipe para Pesquisa(3-Copas / 4-Ouro / 5-Paus / 6-Espada):  ") to iPesqNaipeUser
//iPesqNaipeUser := Val(iPesqNaipeUser)
iQtdeGerInform := 1
iNumMinInform := 3
iNumMaxInfor := 6

cMsgInform := 'Pesquisa Auto - Naipe Aleatoria'
MsgLoad(cMsgInform,iQtdeMsgInform)

FuncaoTela()

aMatTemp2 := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)
iPesqNaipeUser := aMatTemp2[1]

FuncaoTela()

iPesqCarta := iPesqCarta := Ascan(aEmbar, {|x| x[1] == cPesqCartUser})
//iPesqNaipe := Ascan( aBaralho , {|x| x[2] == iPesqNaipeUser},iPesqCarta)
iPesq := iPesqCarta
QOut("Posicao Matriz")
QOut(iPesq)

FuncaoTela()

QOut("Cartas")
QOUT(hb_valtoexp(aEmbar[iPesq]))

FuncaoTela()

iCont := 1
iCont2 := 2
iCont3 := 3
iCont4 := 4
iQtde := 1

While iCont <= iQtde

    //Accept("Informe a Carta a Ser Trocada:  ") to cPesqCartUser
    //cPesqCartUser := '7'
    iQtdeGerInform := 1
    iNumMinInform := 101
    iNumMaxInfor := 113

    cMsgInform := 'Troca Auto - Carta Aleatoria'
    MsgLoad(cMsgInform,iQtdeMsgInform)
    
    aMatTemp2 := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)
    cPesqCartUser := aMatTemp2[1]
    QOut(cPesqCartUser)
    
    FuncaoTela()

    //Accept("Informe o Naipe a Ser Trocada 3-Copas / 4-Ouro / 5-Paus / 6-Espada:  ") to iNaipe
    //iNaipe := 3   
    iQtdeGerInform := 1
    iNumMinInform := 3
    iNumMaxInfor := 6

    cMsgInform := 'Troca Auto - Naipe Aleatoria'
    MsgLoad(cMsgInform,iQtdeMsgInform)

    aMatTemp2 := GeraNumAleatMinMax(iQtdeGerInform,iNumMinInform,iNumMaxInfor)
    iNaipe := aMatTemp2[1]
    QOut(iNaipe)
    
    FuncaoTela() 

    iPesqCarta := Ascan( aBaralho , {|x| x[1] == cPesqCartUser})
    
    //iNaipe := Val(iNaipe)
    If iNaipe = 3
        iPesqCarta := iPesqCarta
    EndIf

    If iNaipe = 4
        iPesqCarta := iPesqCarta + 1
    EndIf

    If iNaipe = 5
        iPesqCarta := iPesqCarta + 2
    EndIf

     If iNaipe = 6
        iPesqCarta := iPesqCarta + 3
    EndIf
   
    
    iPesq := iPesqCarta
    iCarta := aBaralho[iPesq,1]
    iNaipe := aBaralho[iPesq,iCont2]
    cCartaDesc := aBaralho[iPesq,iCont3]
    cNaipeDesc := aBaralho[iPesq,iCont4]

   
    AAdd(aMatTemp, [iCont,iCont2,iCont3,iCont4])
    aMatTemp[Len(aMatTemp)] := {iCarta,iNaipe,cCartaDesc,cNaipeDesc}
    iCont++

Enddo

cMsgInform := 'Cartas Trocadas'
MsgLoad(cMsgInform,iQtdeMsgInform)
QOut('Posicao')
Qout(iPesq)

FuncaoTela()

QOut('Cartas Trocadas')
QOUT(hb_valtoexp(aMatTemp[1]))

FuncaoTela()

cMsgInform := 'Cartas Trocadas Pos. 1 a 7 / 8 a 14 / 15 a 21)'
MsgLoad(cMsgInform,iQtdeMsgInform)
QOUT(hb_valtoexp(aMatTemp))

FuncaoTela()

iQtde := 11
iCont := 1

cMsgInform := 'Cartas Embaralhadas (21 Cartas)'
MsgLoad(cMsgInform,iQtdeMsgInform)

While iCont <= iQtde
    QOUT(hb_valtoexp(aEmbar[iCont]))
    iCont++
EndDo

FuncaoTela()

iQtde := 52
iCont := 1

cMsgInform := 'Cartas do Baralho'
MsgLoad(cMsgInform,iQtdeMsgInform)

While iCont <= iQtde
    QOUT(hb_valtoexp(aBaralho[iCont]))
    iCont++
EndDo

FuncaoTela()

iQtde := 52
iCont := 1

cMsgInform := 'Cartas Embaralhadas'
MsgLoad(cMsgInform,iQtdeMsgInform)

While iCont <= iQtde
    QOUT(hb_valtoexp(aEmbar[iCont]))
    iCont++
EndDo

FuncaoTela()

Enddo

Return Nil 

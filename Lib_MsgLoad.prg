// Mensagem de Load

Function MsgLoad(cMsgInform,iQtdeMsgInform)

Local cMgs := ''
Local iCont := 1
Local cCaract := '*'
Local iQtdeMsg := 5
Local iQtdeExib := 0

cMgs := cMsgInform
iQtdeMsg := iQtdeMsgInform
iQtdeExib := iQtdeMsgInform

While iCont <= iQtdeMsg 
    QOut(cMgs + cCaract + 'Contagem' + Str(iQtdeExib))
    INKEY( 1 ) 
    cCaract := cCaract + '*'
    iCont++
    iQtdeExib--
Enddo


if iQtdeExib = 0
    iQtdeExib = 0
    cCaract := cCaract + '*'
    QOut(cMgs + cCaract + 'Contagem' + Str(iQtdeExib))
    INKEY( 1 ) 
    QOut ('*******Fim de Processamento*******')
    QOut ('******* Resultado *******')
  
EndIf

Return Nil 

// Calculo Preco Item por Unidade Medida Padrao 
// Se um produto é ML, unificamos a Unidade de medida para padrão
// Produto de 269 ML, convertemos para Unodade Padrão 1000 (1L) para comparar Valor por Litro

SET PROCEDURE TO Lib_MsgLoad.prg

Function Main()
Local rPrecoItem := 0 
Local rUMPad := 1000 //ML = 1000 - 1 LT
Local rUMItem := 0
Local rPrecoPad := 0
Local cUMItemSimb := ''
Local cMsgInform := ''
Local iQtdeMsgInform := 0

Accept('Informe a Unidade Medida Padrao:  ') to rUMPad
rUMPad := Val(rUMPad)

Accept('Informe a Unidad de Medida Item:  ') to rUMItem
rUMItem := Val(rUMItem)

Accept('Informe Valor do Item:  ') to rPrecoItem
rPrecoItem := Val(rPrecoItem)

Accept('Informe Simbolo UM  ') to cUMItemSimb

rPrecoPad := (rUMPad/rUMItem)*rPrecoItem

iQtdeMsgInform := 5
cMsgInform := 'Calculando Preco'
MsgLoad(cMsgInform,iQtdeMsgInform)


QOut ('O Valor por:  ' + Str(rPrecoPad) + 'Por:  ' +  cUMItemSimb)

Return Nil

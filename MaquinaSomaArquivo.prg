// Maquina de Soma 
// Salvar dados em arquivo


SET PROCEDURE TO Lib_MaquinaSoma.prg

Function Main()

Local rTotSoma := 0
Local nHandleTotSoma := 0
Local cTemp := ""

nHandleTotSoma := FCREATE("Total_Maquina_Soma.txt")

rTotSoma :=  MaquinaSoma()
cTemp := Str(rTotSoma)

FWrite(nHandleTotSoma,cTemp+CHR(13))

FClose(nHandleTotSoma)

Return Nil 

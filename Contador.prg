//Exemplo de Chamada
MsAguarde({|| fExemplo1()}, "Aguarde...", "Processando Registros...")
  
...
  
/*-----------------------------------------------------------*
 | Func.: fExemplo1                                          |
 | Desc.: Exemplo utilizando MsAguarde                       |
 *-----------------------------------------------------------*/
  
Static Function fExemplo1()
    Local aArea  := GetArea()
    Local nAtual := 0
    Local nTotal := 0
      
    //Executa a consulta
    TCQuery cQryAux New Alias "QRY_AUX"
      
    //Conta quantos registros existem, e seta no tamanho da régua
    Count To nTotal
      
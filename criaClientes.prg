Function Main 

Local aDBFStruct := {}

aAdd(aDBFStruct, {"Nome",       "C", 100, 0})
aAdd(aDBFStruct, {"Cidade",     "C", 050, 0})
aAdd(aDBFStruct, {"Estado",     "C", 002, 0})
aAdd(aDBFStruct, {"Email",      "C", 100, 0})
aAdd(aDBFStruct, {"Telefone",   "C", 020, 0})
aAdd(aDBFStruct, {"Cidade",     "C", 050, 0})
aAdd(aDBFStruct, {"Nascimento", "D", 008, 0})
aAdd(aDBFStruct, {"Credito",    "N", 015, 0})
aAdd(aDBFStruct, {"Observacao", "M", 015, 0})

DBCreate("Clientes.DBF", aDBFStruct)
Return Nil 

// 01 - Executar o HBRUN com o nome do arquivo 
// 02 - Executar o HBRUN sem nenhum parametro 
// 03 - Dentro do HBRUN digitar use + mome do DBF
// 04 - Digitar browse()

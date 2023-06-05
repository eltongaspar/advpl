// Exercio 
// Valida caracter informado se e  letra
//Comentarios: Foi criado uma Lib para validar a letra 
// Funcao IsAlpha funciona e faz o resultado esperado
// Menos linhas de codigo
// Otima funcao para Enquanto

SET PROCEDURE TO Lib_ValidLetra.prg

Function Main()
Local cCaractInform := ""

Accept("Infome uma Letra seu palpite") to cCaractInform

ValidLetra(cCaractInform)

Retur Nil 

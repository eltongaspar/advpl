// Exercicio 06-01 
// Exibir Caracter 219 centro da tela e mover 

Function Main()

Local cCaract := "219"
Local nTec := 0

SetMode(25,80)


?
@ 10,10 Say cCaract

Wait ("Pressione uma tecla de seta"):UP()
nTec := LastKey()

/*Do Case
    CASE nTec == K_DOWN
        QOut(cCaract):Down()
        Breack

    CASE nTec == K_UP
        QOut(cCaract):Up()
        Breack

EndCase*/


Return Nil 

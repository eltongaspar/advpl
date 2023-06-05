// Exercio 47 
// Jogo Adivinha

Function Main ()
Local nNum := 0
Local nMax := 100
Local nMin := 1
Local nCont := 1
Local nSeed := 1

//nNum := RANDOM(nMin,nMax)

nNum := nMax+1
While nNum > nMax 
    nNum := RANDOM(nMin,nMax)
    nCont++
Enddo

QOut("Numero da Sorte:  !!!!!" + Str(nNum))



Return Nil 




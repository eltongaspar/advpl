// 77 Ler Arquivo e valida tamanho 


Function Main()
Local iFiles := 0
Local iSize := 0
Local iCont := 1


ADIR( "C:\StartTOTVSIP\build.txt",iFiles,iSize)



QOUT(hb_valtoexp(iFiles))
QOUT(hb_valtoexp(iSize))



Return Nil 

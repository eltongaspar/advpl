// Funcao para tratar acentos em caracteres 

Static Function_Acento( cTexto )
Local cAcentos     := "? Ç + ç Z Ä ? À Â Ã Å . +   " ¦ à á ã ä å ? É È Ê Ë ^ ' è é ê ë Ì Ý Î Ý ¡ ? Ò Ó Ô Õ Ö " "  ¢ § ð ö Ù Ú Û Ü £ ? ù ú û ü Ñ ñ"
Local cAcSubst     := "C C c c A A A A A A A a a a a a a a a a a E E E E E e e e e e e I I I I i i O O O O O o o o o o o o U U U U u u u u u u N n"
Local cImpCar     := ""
Local cImpLin     := ""
Local nChar        := 0.00
Local nChars     := 0.00
Local nAt     := 0.00     

cTexto := IF( Empty( cTexto ) .or. ValType( cTexto ) != "C", "" , cTexto )

nChars := Len( cTexto )
For nChar := 1 To nChars
     cImpCar := SubStr( cTexto , nChar , 1 )
     IF ( nAt := At( cImpCar , cAcentos ) ) > 0
          cImpCar := SubStr( cAcSubst , nAt , 1 )
     EndIF
     cImpLin += cImpCar
Next nChar

Return( cImpLin )

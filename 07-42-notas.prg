// Lista 07 - Exercicio 42
// Ler o nome de 5 alunos e 3 nota de cada 
// Descarta a menor nota e fazer a media

Function Main()

Local aAlunos := {}
Local cNome := ""
Local rNota1 := -1
Local rNota2 := 0
Local rNota3 := 0
Local rMed := 0
Local rNotaDesc := 0
Local iCont := 0
Local iCont2 := 0
Local iCont3 := 0
Local iCont4 := 0
Local iCont5 := 0
Local iQtde := 5
Local lDigit := .F.

For iCont:=1 to iQtde 

	Accept("Nome do Aluno:  ") to cNome
	
	While rNota1 < 0 .Or. rNota1 > 10 .Or. lDigit = .F.
		Accept("Informe a Nota:  "  ) to rNota1
		lDigit := IsDigit(rNota1)
		rNota1 := Val(rNota1)
	Enddo

    lDigit := .F.
    While rNota2 < 0 .Or. rNota2 > 10 .Or. lDigit = .F.
		Accept("Informe a Nota:  "  ) to rNota2
		lDigit := IsDigit(rNota2)
		rNota2 := Val(rNota2)
	Enddo

    lDigit := .F.
    While rNota3 < 0 .Or. rNota3 > 10 .Or. lDigit = .F.
		Accept("Informe a Nota:  "  ) to rNota3
		lDigit := IsDigit(rNota3)
		rNota3 := Val(rNota3)
	Enddo

    rNotaDesc := rNota1
    If rNota2 <= rNota1
        rNotaDesc := rNota2
    EndIf

    If rNota3 <= rNota2
        rNotaDesc := rNota3
    EndIf

    QOut(rNotaDesc)

    rMed := (rNota1+rNota2+rNota3-rNotaDesc) / 2

    iCont2 := 2
    iCont3 := 3
    iCont4 := 4
    iCont5 := 5 
    
    AAdd(aAlunos,[iCont,iCont2,iCont3,iCont4,iCont5])
    aAlunos[Len(aAlunos)] := {cNome,rNota1,rNota2,rNota3,rMed}
Next

aSort(aAlunos,,, { |x,y| x[1] < y[1] })
QOut("Nome, Nota 1, Nota 2, Nota 3, Media")
QOUT(hb_valtoexp(aAlunos))


Return Nil 

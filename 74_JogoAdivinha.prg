// Exercicio 74 
// Jogo do Adivinha parte 2

SET PROCEDURE TO Lib_ValidLetra.prg
SET PROCEDURE TO Lib_GeraCaracterAleat.prg

Function Main()

Local cCaractInform := ""
Local iQtdeGerInform := 1
Local iMinInform := 65
Local iMinInform2 := 90
Local iMaxInfor := 97
Local iMaxInfor2 := 122
Local cCaractSort := ""
Local aTempCaractSort := {}
Local iCont := 0

aTempCaractSort:= GeraCaracterAleat(iQtdeGerInform,iMinInform,iMinInform2,iMaxInfor,iMaxInfor2)


cCaractSort := aTempCaractSort[1]
cCaractSort := Chr(cCaractSort)



While cCaractInform <> cCaractSort

    cCaractInform := ValidLetra(cCaractInform)

    
    QOut("xxxxxxx Errou, tente outro palpite xxxxxxx")
    iCont++
    QOut("xxxxxxx Tentativa N.:  "  + Str(iCont))

EndDo


QOut("*******Parabens, Acertou*******")
QOUT("Letra Sorteada:  " + (cCaractSort))

QOut("Letra Informada:  " + (cCaractInform))
QOut("xxxxxxx Tentativas N.:  "  + Str(iCont))

If iCont <= 5 
QOut("Voce e Muito Bom, acertou em  " + Str(iCont) + "  aatentativas")
EndIf

If iCont  > 5 .and. iCont <= 9 
QOut("Voce e Bom, acertou em  " + Str(iCont) + "  tentativas")
EndIf

If iCont  > 9 .and. iCont <= 13
QOut("Voce e Mediano, acertou em  " + Str(iCont) + "  tentativas")

If iCont  > 13
QOut("Voce e Fraco, acertou em  " + Str(iCont) + "  tentativas")
EndIf

EndIf
Return Nil 

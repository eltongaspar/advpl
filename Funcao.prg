//
//REQUEST HB_GT_WIN_DEFAULT

#define EMPRESA "TOTVS IP/TM"

Function Main()

    local cNome := EMPRESA
    local nI    := 0

    qout("nI: ", nI)
    nI++
    Segundo("Jacare", @nI)
    
    qout("nI: ", nI)
    nI++
    qout("nI: ", nI)
    wait "Fim"

Return Nil

static function Segundo(cVar, nX)
    qout()
    qout("Inicio -> Segundo")
    qout(cVar, nX)
    nX := 5
    qout(cVar, nX)
    qout("Fim -> Segundo")
    qout()    
return .t.

// static function Terceiro(cVar)
//     qout(cVar)
//     qout(cNome)
// return .t.


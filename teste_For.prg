Function Main()

    local cVar
    local nI := 0

    WAIT "Iniciando - Pressione uma tecla"

    for nI := 100 to 3000 step 100
        Tone(nI, 2)
    next nI
    Qout("Fim")
   

Return NIL

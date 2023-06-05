//
//#ifndef __HARBOUR__
   // REQUEST HB_GT_WIN_DEFAULT
//#endif

Function Main()

    Local nMax      := 0
    
    SET WRAP ON
    SetMode(10,50)
    SET CONSOLE ON

    while nMax < 40
        cls
        @ 1, 1 SAY Time()
        @ 5, 10 SAY "TOTVS IP/TM"
       // Sleep(10)
        nMax++
    enddo

RETURN NIL

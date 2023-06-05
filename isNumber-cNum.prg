Function Main()
    local cNum := ""

    while ! isNumber(cNum)
        ACCEPT "DIGITE UM NUM " to cNum
    enddo

    QOUT("Numero digitado ", cNum)
RETURN nil

function isNumber(cNum)
    local lIsNbr := .T.
    local i := 0

    if cNum == ""
        lIsNbr := .F.
    else
        for i = 0 to len(cNum) - 1
    //        QOUT("Checando" + right(cNum,len(cNum) - i), isDigit(right(cNum,len(cNum) - i)))
            if ! isDigit(right(cNum,len(cNum) - i))
                lIsNbr := .F.
                exit
            endif
        next i
    endif
return(lIsNbr)

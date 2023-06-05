//REQUEST HB_GT_WIN_DEFAULT

function main()
 
    local nContra := 0
    local nPar := 0

    for nContra := 1 to 100000

    nPar := mod(nContra, 2)

    if nPar == 0
       ? nContra
    endif

    next

return nil

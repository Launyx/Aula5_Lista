function main()

    local bLoop := .T.
    local nNum := 4
    local nZ1
    local nZ2
    local nZ3
    local Z1 := 0
    local Z2 := 0
    local Z3 := 0
    local nCont := 30


    while bLoop
        ACCEPT "Digite um número diferente de 0: " TO nNUm
        
        if isdigit(nNUm)
            nNum := Val(nNum)
            if nNum != 0
                exit
            else
                QOUT("Por favor, digite um número diferente de 0!")
            end if
        else
            QOUT("Por favor, digite um número!")
        end if
    end do

    // Laço para calcular Z1
    for nZ1 := 1 TO nNum
        Z1 += 1 / nZ1
    next nZ1

    // Laço para calcular Z2
    for nZ2 := 1 TO 30
        Z2 += NZ2 / nCont
        nCont --
    next nZ2

    // Laço para calcular Z3
    for nZ3 := 1 TO nNum
        if Mod(nZ3, 2) == 0
            Z3 -= nZ3 / (nZ3 * 2)
        else
            Z3 += nZ3 / (NZ3 * 2)
        end if
    next nZ3


    QOUT("Z1 = " + Alltrim(Str(Z1)))
    QOUT("Z2 = " + Alltrim(Str(Z2)))
    QOUT("Z3 = " + Alltrim(Str(Z3)))

RETURN nil
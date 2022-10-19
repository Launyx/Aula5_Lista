// Mesma coisa da 69, EXP do clipper faz exponencia com base Euler
function main()

    local nNum
    local nRes

    for nNum := 0 TO 15
        nRes := 3 ** nNum
        QOUT("3 ^ " + Alltrim(StrZero(nNum, 2)) + " = " + Alltrim(Str(Round(nRes, 0))))
        nRes := 0
    next nNum

RETURN nil

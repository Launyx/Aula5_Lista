function main()

    local nNum
    local nRes

    // Laço for para calcular expoente com exp (EXP no clipper só faz com base Euler)
    for nNum := 0 TO 15
        nRes := exp(nNum)
        QOUT("3 ^ " + Alltrim(StrZero(nNum, 2)) + " = " + Alltrim(Str(nRes)))
        nRes := 0
    next nNum

RETURN nil
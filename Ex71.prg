function main()

    // FALTA WHILE  
    local nNum
    local nI
    local nFat := 1
    local nTotal := 1
    local nCont

    ACCEPT "Digite um número para calcular seu fatorial: " TO nNum

    nNum := Val(nNum)

    for nI := 1 TO nNum
        nFat := nFat * nI
        QOUT(Alltrim(Str(nFat)))
    next nI

    QOUT("Fatorial de " + Alltrim(Str(nNum)) + ": " + Alltrim(Str(nFat)))

RETURN nil
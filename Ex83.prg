// REQUEST HB_GT_WIN_DEFAULT
function main()

    // FALTA WHILE
    
    // Iniciando variáveis
    local nI := 1
    local nCont := 1
    local nValor
    local aArray := {}
    local nTamanho
    local teste := 1

    // Loop para adicionar 10000 numeros para a Array
    for nCont := 1 TO 10000
        nValor := Random()% 1000 + 1
        AAdd(aArray, nValor)
    
    next nCont

    // Print da Array normal
    for nI := 1 TO len(aArray)
        QOUT(Alltrim(StrZero(nI, 5)) + " " + Alltrim(StrZero(aArray[nI], 4)))

    next nI

    // Print da Array ao contrario
    for nI := len(aArray) TO 1 step -1
        QOUT(Alltrim(StrZero(nI, 5)) + " " + Alltrim(StrZero(aArray[nI], 4)))

    next nI    

    wait

RETURN nil
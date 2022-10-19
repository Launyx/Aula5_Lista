function main()

    local nI := 1
    local nCont := 1
    local nValor
    local aArray1 := {}
    
    // FALTA WHILE

    
    QOUT("Digite 10 valores: ") 
    for nCont := 1 TO 10
        ACCEPT "Digite um valor: " TO nValor

        nValor := Val(nValor)
        AAdd(aArray1, nValor)
    
    next nCont

    QOUT("Sequência invertida: ")
    for nI := len(aArray1) TO 1 step -1
        QOUT(aaRRAY1[nI])

    next nI

RETURN nil
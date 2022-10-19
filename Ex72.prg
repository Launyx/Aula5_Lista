// Série de Fibonacci
function main()

    // FALTA WHILE
    
    // Iniciando variáveis
    local nAlvo
    local nNum1 := 0
    local nNum2 := 1
    local nCont
    local nAux
    local nI

    // Obtendo limite para o número de Fibonacci
    ACCEPT "Digite até qual número da série de Fibonacci você quer saber: " TO nAlvo

    nCont := Val(nAlvo)
    
    QOUT("Série de Fibonacci até o " + Alltrim(Str(nCont)) + "º número: ")
    QOUT(Alltrim(StrZero(1, 3)))

    // Laço para obter os números da série de Fibonacci
    for nI := 1 TO (Val(nAlvo) -1)
        nAux := nNum1 + nNUm2   // Faz a soma dos elementos anteriores
        nNum1 := nNum2          // Recebe o valor do segundo elemento
        nNum2 := nAux           // Recebe a soma feita com os elementos anteriores

        QOUT(Alltrim(StrZero(nAux, 3)))

    end for

RETURN nil
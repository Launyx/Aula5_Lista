SET PROCEDURE TO EscolheDesvio.prg

function main()

    // Função da biblioteca EscolheDesvio.prg para escolher o laço
    Desvio()

RETURN nil

function nPara()

    local nTotal
    local nValor
    local nSoma := 0
    local nI

    for nI := 1 TO 2
        ACCEPT "Digite um valor para adicionar a soma total: " to nValor 

        if nValor == "0"
            nI := 2
        else
            nValor := Val(nValor)
            nSoma += nValor
            nI := 1
        end if
    next nI

    QOUT("A soma de todos os números digitados é: " + Alltrim(Str(nSoma)))

RETURN .t.

function nDesvio()

    local nI
    local nValor
    local nSoma := 0

    for nI := 1 TO 2
        ACCEPT "Digite um valor para adicionar a soma ou '0' para obter o resultado: " to nValor 

        if nValor == "0"
            exit // Sai do for (desvio incondicional)
        else
            nValor := Val(nValor)
            nSoma += nValor
        end if
        nI := 1
    next nI

    QOUT("A soma de todos os números digitados é: " + Alltrim(Str(nSoma)))

RETURN .t.

function nEnquanto()

    local nValor
    local nSoma := 0

    while nValor != 0
        ACCEPT "Digite um valor para adicionar a soma ou '0' para obter o resultado: " to nValor 
        nValor := Val(nValor)
        nSoma += nValor

    end do

    QOUT("A soma de todos os números digitados é: " + Alltrim(Str(nSoma)))

RETURN .t.
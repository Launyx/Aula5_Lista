// REQUEST HB_GT_WIN_DEFAULT
// Precisa ser compilado, terminal pequeno
SET PROCEDURE TO EscolheLoop.prg

function main()

    // Função da biblioteca EscolheLoop.prg para escolher o laço
    escolhe()

    wait

RETURN nil

function nPara()

    local nValor
    local nI
    
    QOUT(Chr(10) + "Loop Para: ")
    for nI := 1 TO 100
        nValor := nI % 3

        if nValor == 0
            QOUT(Alltrim(StrZero(nI, 3)) + " é múltiplo de 3")
        end if
    next nI

RETURN .t.

function nEnquanto()

    local nValor
    local nI := 1

    QOUT(Chr(10) + "Loop enquanto: ")
    while nI <= 100
        nValor := nI % 3
        
        if nValor == 0
            QOUT(Alltrim(StrZero(nI, 3)) + " é múltiplo de 3")
        end if
        nI ++
    end do

RETURN .t.
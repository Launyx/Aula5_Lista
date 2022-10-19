// REQUEST HB_GT_WIN_DEFAULT
// Precisa ser compilado, terminal pequeno
SET PROCEDURE TO EscolheLoop.prg

function main()

    escolhe()

    wait

RETURN nil

function nEnquanto()

    local nI := 0

    QOUT(Chr(10) + "Função: Enquanto")
    do while nI <= 100
        QOUT(Alltrim(StrZero(nI, 3)))
        nI ++

    end do

RETURN .t.

function nPara()

    local nI

    QOUT(Chr(10) + "Função: Para")
    for nI := 0 to 100
        QOUT(Alltrim(StrZero(nI, 3)))

    end for

RETURN .t.
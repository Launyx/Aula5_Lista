REQUEST HB_GT_WIN_DEFAULT
// Precisa ser compilado, terminal pequeno
SET PROCEDURE TO EscolheLoop.prg

function main()

    // Função da biblioteca EscolheLoop.prg
    escolhe()

    wait

RETURN nil

function nEnquanto()

    local nI := 100

    QOUT(Chr(10) + "Função: Enquanto")
    do while nI >= 0
        QOUT(Alltrim(StrZero(nI, 3)))
        nI --

    end do

RETURN .t.

function nPara()

    local nI

    QOUT(Chr(10) + "Função: Para")
    for nI := 100 to 0 step -1
        QOUT(Alltrim(StrZero(nI, 3)))

    end for

RETURN .t.

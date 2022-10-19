REQUEST HB_GT_WIN_DEFAULT
// Precisa ser compilado, terminal pequeno
SET PROCEDURE TO EscolheLoop.prg

function main()

    // Função da biblioteca EscolheLoop.prg
    escolhe()

    wait

RETURN nil

function nPara()
    local nI
    local print

    QOUT(Chr(10) + "Para: ")
    for nI := 32  TO 47
        QOUT(("| " + Alltrim(StrZero(nI, 3) + " - "+ Chr(nI) + " |")))
        
    next nI

RETURN .t.

function nEnquanto()

    local print
    local nCont := 32

    QOUT(Chr(10) + "Enquanto: ")
    while nCont <= 126
        QOUT(Alltrim(StrZero(nCont, 3) + " - "+ Chr(nCont) + " |"))
        nCont ++
    end do

RETURN .t.
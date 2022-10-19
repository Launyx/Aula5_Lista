REQUEST HB_GT_WIN_DEFAULT
// Precisa ser compilado, terminal pequeno
SET PROCEDURE TO EscolheLoop.prg

function main()

    escolhe()

    wait

RETURN nil

function nPara()
    local nI
    local nRandom


    QOUT(Chr(10) + "50 valores aleatórios: ")
    QOUT( "Laço 'Para': ")
    for nI := 1 TO 50
        nRandom := Random()% 89 + 10
        QOUT(Alltrim(StrZero(nI, 2)) + ". " + Alltrim(StrZero(nRandom, 2)))
    end for

return .t.

function nEnquanto()

    local nI := 1
    local nRandom

    QOUT(Chr(10) + "50 valores aleatórios: ")
    QOUT("Laço 'Enquanto': ")
    do while nI <= 50
        nRandom := Random()% 89 + 10
        QOUT(Alltrim(StrZero(nI, 2)) + ". " + Alltrim(StrZero(nRandom, 2)))
        nI ++
    end while

return .t.
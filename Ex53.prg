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
    local nRandom
    local nCont := 1
    QOUT(Chr(10) + "Para: ")
    for nI := 1 TO 2
        nRandom := Random()% 89 + 10
        if nRandom == 80
            exit
        else
            QOUT(Alltrim(StrZero(nCont, 3)) + ". " + Alltrim(StrZero(nRandom, 2)))
            nCont ++
            nI := 1
        end if
    end for

return .t.

function nEnquanto()

    local nRandom
    local nCont := 1

    QOUT(Chr(10) +"Enquanto: ")
    do while nRandom != 80
        nRandom := Random()% 89 + 10

        if nRandom == 80
            exit
        else
            QOUT(Alltrim(StrZero(nCont, 3)) + ". " + Alltrim(StrZero(nRandom, 2)))
            nCont ++
        end if
    enddo
return .t.
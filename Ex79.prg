// REQUEST HB_GT_WIN_DEFAULT
function main()

    local bLoop := .T.
    local nPim

    while bLoop

        ACCEPT "Digite um número inteiro e positivo para ser o 'Pim': " TO nPim

        if isdigit(nPim) .AND. Val(nPim) > 0 .AND. Mod(Val(nPim), 1) == 0
            nPim := Val(nPim)
            bLoop := .F.

        else
            QOUT("Número inválido, tente novamente!")
        end if
    end do

    PIM(nPim)


RETURN nil

function PIM(nPim)

    local nI := 1
    local nRes

    for nI := 1 TO 60 
        nRes := nI % nPim
        if nRes == 0
            QOUT("PIM!")
            Tone(1500, 15)
        else
            QOUT(nI)
        end if
        Millisec(1000)
    next nI


RETURN nil
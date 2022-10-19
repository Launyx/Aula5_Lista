REQUEST HB_GT_WIN_DEFAULT
// Precisa ser compilado, terminal pequeno
SET PROCEDURE TO EscolheLoop.prg

function main()

    local nNum
    local nLimite
    local bLoop := .T.


    // Laço para certificar que o usuario digite dois números
    while bLoop
        ACCEPT "Digite o número que gostaria de saber os multiplos: " TO nNum
        ACCEPT "Digite até qual número gostaria de saber: " TO nLimite

        if isdigit(nNum) .AND. isdigit(nLimite)
            nNum := Val(nNum)
            nLimite := Val(nLimite) 
            bLoop := .F.

        else
            QOUT("Valor inválido, tente novamente!")

        end if
    end do

    // Função da biblioteca EscolheLoop.prg para escolher o laço
    escolheUsuario(nNum, nLimite)

    wait

RETURN nil

function nPara(nNum, nLimite)

    local nI

    QOUT("Números múltiplos de " + Alltrim(Str(nNum)) + " até o número " + Alltrim(Str(nLimite) + ":"))
    for nI := 1 to nLimite
        if Mod(nI, nNum) == 0
            QOUT(Alltrim(Str(nI)))
        end if
    end for

return .t.

function nEnquanto(nNum, nLimite)

    local nCont := 1

    QOUT("Número múltiplos de " + Alltrim(Str(nNum)) + " até o número " + Alltrim(Str(nLimite) + ":"))
    while nCont <= nLimite
        if Mod(nCont, nNum) == 0
            QOUT(Alltrim(Str(nCont)))
        end if
        nCont ++
    end for

return .t.

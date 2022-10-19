SET PROCEDURE TO EscolheLoop.prg

function main()

    // Função da biblioteca EscolheLoop.prg para escolher o laço
   escolhe()
    

RETURN nil

function nPara()

    local nNum
    local nSom := 0
    local nPar := 0

    for nNum := 1 TO 10
        nPar := mod(nNUm, 2)

        if nPar == 0
            nSom += nNum
        else
            loop
        end if
    end for

    QOUT("Soma dos dez primeiros números naturais divisíveis por 2: " + Alltrim(Str(nSom)))


RETURN .t.

function nEnquanto()

    local nNum := 1
    local nSom := 0
    local nPar := 0

    while nNum <= 10
        nPar := Mod(nNum, 2)

        if nPar == 0
            nSom += nNum
        end if
        nNum ++
    end do

    QOUT("Soma dos dez primeiros números naturais divisíveis por 2: " + Alltrim(Str(nSom)))


RETURN .t.
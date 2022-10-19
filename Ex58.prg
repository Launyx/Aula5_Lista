SET PROCEDURE TO EscolheLoop.prg


function main()

    // Função da biblioteca EscolheLoop.prg para escolher o laço
   escolhe()

RETURN nil

function nPara()

    local nNum
    local nSom := 0

    // Laço for para somar os dez primeiros números naturais
    for nNum := 1 TO 10
        nSom += nNum
    end for

    QOUT("Soma dos dez primeiros números naturais: " + Alltrim(Str(nSom)))

RETURN .t.

function nEnquanto()

    local nNum := 1
    local nSom := 0

    // Laço while para somar os dez primeiro números naturais
    while nNum <= 10
        nSom += nNum
        nNum ++
    end do

    QOUT("Soma dos dez primeiros números naturais: " + Alltrim(Str(nSom)))

RETURN .t.
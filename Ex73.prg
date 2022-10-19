#include "inkey.ch"

function main()

    local nNota
    local nTotal := 0
    local nCont := 0

    do while inkey(0.5) != K_ESC
        ACCEPT "Digite a nota do aluno ou aperte 'esc' para terminar: " TO nNota

        QOUT("Aperte 'ESC' para terminar")
        millisec(500)
        nNota := Val(nNota)
        nTotal += nNota    
        nCont ++    
    end do

    QOUT("Número de alunos: " + Alltrim(Str(nCont)))
    QOUT("A média da sala é de: " + Alltrim(Str(nTotal/nCont)))

RETURN nil
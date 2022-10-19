function main()

    local cMedalha
    local nTotal := 0
    local nBronze := 0
    local nPrata := 0
    local nOuro := 0

    // Laço para parar quando a letra dada pelo usuário for F
    do while cMedalha != "F"
        ACCEPT "Digite a primeira letra da medalha presente no cartão ou 'F' para sair: " to cMedalha

        cMedalha := upper(cMedalha)

        // Laços para verificar e somar qual o tipo da medalha e somatoria do total
        if cMedalha == "B"
            nBronze ++
            nTotal ++
        elseif cMedalha == "P"
            nPrata ++
            nTotal ++
        elseif cMedalha == "O"
            nOuro ++
            nTotal ++
        else
            QOUT("Letra inválida, tente novamente!")
        end if
    end do

    QOUT("*===========================*")
    QOUT("|==== TOTAL DE MEDALHAS ====|")
    QOUT("|= Medalhas de bronze: " + Alltrim(StrZero(nBronze, 2)) + " ==|")
    QOUT("|= Medalhas de Prata:  " + Alltrim(StrZero(nPrata, 2)) + " ==|")
    QOUT("|= Medalhas de Ouro:   " + Alltrim(StrZero(nOuro, 2)) + " ==|")
    QOUT("|= Medalhas totais:    " + Alltrim(StrZero(nTotal, 2)) + " ==|")
    QOUT("*===========================*")
    
RETURN nil
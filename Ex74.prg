function main()

    local nNum
    local bLoop := .T.
    local nRandom
    local nTentativas := 0


    nRandom := Random() % 100
    while bLoop
        ACCEPT "Tente adivinhar o número que o computador escolheu: " TO nNum
        nNum := Val(nNum)

        if nNum == nRandom
            QOUT("Parabéns, você acertou!")
            if nTentativas < 5
                QOUT("Você é muito bom, acertou em " + Alltrim(Str(nTentativas)) + " tentativas.")
                bLoop := .F.

            elseif nTentativas > 5 .AND. nTentativas < 9
                QOUT("Você é bom, acertou em " + Alltrim(Str(nTentativas)) + " tentativas.")
                bLoop := .F.

            elseif nTentativas > 9 .AND. nTentativas < 13
                QOUT("Você é mediano, acertou em " + Alltrim(Str(nTentativas)) + " tentativas.")
                bLoop := .F.
            else
                QOUT("Você é muito fraco, acertou em " + Alltrim(Str(nTentativas)) + " tentativas.")
            end if

        elseif nNum > nRandom
            QOUT(Chr(10) + "Você errou, O número que você digitou é maior que o número escolhido pelo computador")
            nTentativas ++
        else
            QOUT(Chr(10) + "Você errou, O número que você digitou é menor que o número escolhido pelo computador")
            nTentativas ++
        end if
    end do

RETURN nil
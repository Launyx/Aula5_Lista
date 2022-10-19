function main()


    local nI, Cont, nCont, nAlt, nSex, conta, mMedia
    local nMaior := 0
    local nMenor := 999
    local aAltura := {}
    local aSexo := {}
    local aMulheres := {}
    local nHomem := 0
    local nMulher := 0
    local nValor := 0
    local ContFinal := 0

    // Laço para obter altura de 40 pessoas e colocar em um Array, além de obter a maior altura e a menor altura
    while len(aAltura) < 40
        nAlt := (Random()%40 + 150) // Obtem número aleatório de altura entre 1.5m e 2m
        if nAlt > nMaior
            nMaior := nAlt
        end if

        if nAlt < nMenor
            nMenor := nAlt
        end if
        Aadd(aAltura, nAlt)
    end do


    // Laço para obter um número aleatório entre homens e mulheres de um total de 40 pessoas
    while len(aSexo) < 40
        nSex := Random()%8 + 70
        QOUT(nSex)
        if nSex == 70
            AAdd(aSexo, "F")
            nMulher ++

        elseif nSex == 77
            AAdd(aSexo, "M")
            nHomem ++   // Conta quantos homens tem no grupo
        end if
    end do

    QOUT("Pessoas: ")
    for nCont:= 1 TO 40
        QOUT(Alltrim(Str(nCont)) + ". Sexo: " + aSexo[nCont] + " Altura: " + Alltrim(Str(aAltura[nCont])))
    next nCont

    for Cont := 1 TO 40
        if aSexo[Cont] == "F"
            AAdd(aMulheres, aAltura[Cont])
        else
            loop
        end if
    next Cont

    for ContFinal := 1 TO len(aMulheres)
        mMedia := aMulheres[ContFinal]
        nValor := nValor + mMedia
        // QOUT(aMulheres[ContFinal])
    next ContFinal

    QOUT("Maior altura: " + Alltrim(Str(nMaior)) + " Menor altura: " + Alltrim(Str(nMenor)))
    QOUT("Média de altura das mulheres: " + Alltrim(Str(nValor / len(aMulheres))))
    QOUT("Número de homens: " + Alltrim(Str(nHomem)))

RETURN nil
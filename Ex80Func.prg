function main()


    // Variável pra caramba
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

    // Função pra caramba
    alturas(@aAltura, nAlt, @nMaior, @nMenor)
    sexos(@aSexo, nSex, @nMulher, @nHomem)
    lista(aSexo, nCont, aAltura)
    altura_Mulheres(Cont, aSexo, @aMulheres, aAltura)
    calcula_Media(ContFinal, @mMedia, aMulheres, @nValor)
    apresentacao(nMaior, nMenor, nValor, aMulheres, nHomem)
    
RETURN nil

function alturas(aAltura, nAlt, nMaior, nMenor)

    // Laço para obter altura de 40 pessoas e colocar em um Array, além de obter a maior altura e a menor altura
    while len(aAltura) < 40
        nAlt := (Random()%40 + 150) / 100 // Obtem número aleatório de altura entre 1.5m e 1.9m
        if nAlt > nMaior
            nMaior := nAlt
        end if

        if nAlt < nMenor
            nMenor := nAlt
        end if
        Aadd(aAltura, nAlt) // adiciona a altura a Array de alturas
    end do

RETURN nil

function sexos(aSexo, nSex, nMulher, nHomem)

    // Laço para obter um número aleatório entre homens e mulheres de um total de 40 pessoas
    while len(aSexo) < 40
        nSex := Random()%8 + 70 // Obtem numeros aleatorios entre 70 e 77 tendo em vista a tabela ascii, para obter M para homens ou F para mulheres
        if nSex == 70 // Se o número aleatório for 70, se refere a letra F na tabela ascii
            AAdd(aSexo, "F")
            nMulher ++ // Conta quantas mulheres tem no grupo

        elseif nSex == 77 // Se o número aleatório for 70, se refere a letra M na tabela ascii
            AAdd(aSexo, "M")
            nHomem ++   // Conta quantos homens tem no grupo
        end if
    end do

RETURN nil

function lista(aSexo, nCont, aAltura)

    QOUT("Pessoas: ")
    for nCont:= 1 TO 40 // Laço para mostrar a posição da pessoa, junto a seu sexo e altura
        QOUT(Alltrim(Str(nCont)) + ". Sexo: " + aSexo[nCont] + " Altura: " + Alltrim(Str(aAltura[nCont])))
    next nCont

RETURN nil

function altura_Mulheres(Cont, aSexo, aMulheres, aAltura)

    // Pega altura somente das mulheres
    for Cont := 1 TO 40
        if aSexo[Cont] == "F" // Verifica se o elemento da Array de sexos é F
            AAdd(aMulheres, aAltura[Cont]) // Adiciona à Array aMulheres o valor de altura correspondente a mesma posição da Array de sexo
        else
            loop
        end if
    next Cont

RETURN nil

function calcula_Media(ContFinal, mMedia, aMulheres, nValor)

    // Laço para calcular a media de altura das mulheres
    for ContFinal := 1 TO len(aMulheres)
        mMedia := aMulheres[ContFinal]  // Atribui a altura das mulheres a mMedia
        nValor := nValor + mMedia // Soma todas as alturas obtidas das mulheres

    next ContFinal

RETURN nil

function apresentacao(nMaior, nMenor, nValor, aMulheres, nHomem)

    // Apresentação da maior altura, menor altura, média de altura das mulheres do grupo e número de homens no grupo
    QOUT("Maior altura: " + Alltrim(Str(nMaior)) + " Menor altura: " + Alltrim(Str(nMenor)))
    QOUT("Média de altura das mulheres: " + Alltrim(Str(nValor / len(aMulheres))))
    QOUT("Número de homens: " + Alltrim(Str(nHomem)))

RETURN nil

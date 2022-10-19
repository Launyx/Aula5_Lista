function main()

    local nTotal := 0
    local nFichas
    local bLoop := .T.

    QOUT("Obtendo dados")
    while bLoop
        nFichas := (Random()%3500 + 1000) * 10000 // Obtendo número aleatório para o tamanho dos arquivos entre 10 e 35 Megas
        nTotal := nTotal + nFichas // Adiciona o arquivo ao espaço total

        if nFichas + nTotal > 1500000000 // Verifica se há espaço suficiente para o próximo arquivo
            QOUT("Limite máximo atingido, o próximo arquivo é maior do que o espaço disponível!")
            bLoop := .F.

        else
            QOUT("Tamanho do arquivo: " + Alltrim(Str(nFichas)) + " bytes")
            nTotal += nFichas
            QOUT("Espaço disponível: " + Alltrim(Str(1500000000 - nTotal)) + " bytes") // Mostra o espaço disponível após cada adição de arquivo
        end if
        Millisec(500)
    end do

RETURN nil
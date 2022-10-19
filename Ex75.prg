function main()

    local nTrigo := 1
    local nQuadro := 1
    local nI

    // Laço for para calcular os trigos em cada quadro e no total
    for nI := 1 TO 64    
        QOUT("Quadro: " + Alltrim(Str(nI)) + " - Trigo no quadro: " + Alltrim(Str(nQuadro)))
        nQuadro := nQuadro * 2 // O próximo quadro recebe o dobro de trigo do anterior
        QOUT("Trigo total: " + Alltrim(Str(nTrigo)))
        nTrigo += nQuadro // Somatória dos trigo de todos os quadros
    end for

RETURN nil
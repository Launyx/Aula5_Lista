// REQUEST HB_GT_WIN_DEFAULT
// Precisa buildar para mostrar todos valores na tela, terminal pequeno
function main()

    local nI
    local cont
    local nNota := 0
    local nTotal := 0
    local aNotas := {}

    //Laço para obter as notas e soma-las
    for nI := 1 TO 15
        ACCEPT "Digite a nota do aluno: " TO nNota
        nNota := Val(nNota)
        AAdd(aNotas, nNota)

    next nI

    // Laço para somar todas as notas
    for cont := 1 TO 15
        nTotal := nTotal + aNotas[cont]

    next cont

    QOUT("A média de todos os alunos é: " + Alltrim(Str(nTotal / 15)))

RETURN nil
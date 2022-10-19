function main()

    local bLoop := .T.
    local nNum

    // Loop para certificar que o usuário digite um número inteiro positivo
    while bLoop
        ACCEPT "Digite um número inteiro positivo: " TO nNum

        if isdigit(nNum) .AND. Val(nNum) > 0 .AND. Mod(Val(nNum), 1) == 0 // Condição apra verificar se o valor digitado é um número inteiro positivo
            nNum := Val(nNum)
            bLoop := .F.

        else
            QOUT("Valor inválido!")
        end if
    end do

    // Chama função verifica
    verifica(nNum)
    
RETURN nil

// Função para verificar se o número é primo
function verifica(nNum)
    local nI
    local nCont := 0

    for nI := 2 TO (nNum / 2) // A partir da metade do número, não é possível encontrar um divisor sem resto
        if Mod(nNum, nI) == 0 // verifica se o número dado é divisível por outro
            nCont++           // Adiciona ao contador caso o número seja divisível por outro
        end if
    next nI

    if nCont == 0   // Se o número não for divisível por nenhum outro entre 2 e a metade dele, ele é primo
        QOUT(Alltrim(Str(nNum)) + " É um número primo!")
    else
        QOUT(Alltrim(Str(nNum)) + " NÃO É um número primo!")
    end if

RETURN .t.
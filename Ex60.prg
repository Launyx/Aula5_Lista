function main()

    // Iniciando variáveis
    local nI
    local nNum
    local cEsc
    local nSom := 0
    local nPar := 0
    local nImpar := 0

    // Obtendo valores do usuário
    
    ACCEPT "Digite quantos números gostaria de calcular: " TO nNum
    ACCEPT "Gostaria de calcular número pares ou ímpares:  (Par/Impar) " TO cEsc   

    nNum := Val(nNum)

    // Condição para verificar se o usuario quer PAR ou IMPAR
    if upper(cEsc) == "PAR"
        for nI := 1 TO nNum
            nPar := mod(nI, 2)

            if nPar == 0
                nSom += nI
            end if
        end for

        QOUT("Soma dos " + Alltrim(Str(nNum)) + " primeiros números naturais pares: " + Alltrim(Str(nSom)))
    
    elseif upper(cEsc) == "IMPAR"
        for nI := 1 TO nNUm
            nImpar := mod(nI, 2)

            if nImpar != 0
                nSom += nI
            end if
        end for

        QOUT("Soma dos " + Alltrim(Str(nNum)) + " primeiros números naturais impares: " + Alltrim(Str(nSom)))

    else
        QOUT("Opção inválida, por favor digite 'Par' ou 'Impar'!")

    end if

RETURN nil
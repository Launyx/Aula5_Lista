function main()

    local cNome := "LONTRA"
    local aArray := {"L", "O", "N", "T", "R", "A"}
    local aAcertos := {}
    local aErros := {}
    local nPos
    local cLetra
    local nI
    local bLoop := .T.

    // Laço while para continuar perguntando a letra para o usuario
    while bLoop
        ACCEPT "Digite uma letra para adivinhar o animal ou digite '0' para sair: " TO cLetra

        nPos := At(upper(cLetra), cNome)
        if cLetra == "0"
            exit
        elseif nPos != 0
                QOUT("Você acertou uma letra!")
                QOUT(cLetra)
                AAdd(aAcertos, cLetra)
                QOUT("Você já acertou " + Alltrim(Str(len(aAcertos))) + " letras!")

            if len(aAcertos) == len(aArray)
                QOUT("Você acertou todas as letras!")
                QOUT("A palavra era: " + cNome)
                bLoop := .F.
            end if
        else
            AAdd(aErros, cLetra)
            if len(aErros) == 6
                QOUT("Você perdeu!")
                exit
            else
                QOUT("Você errou, tente novamente")
            end if
            
        end if
    end do
    
RETURN nil
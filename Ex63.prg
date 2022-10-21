Function main()

    local nI
    local nTotal := 0
    local nNota
    local nMedia
    local nExame
    local bLoop := .T.
    local cEscolha

    while bLoop
        ACCEPT "Gostaria de fazer com o lado 'Para' ou 'Enquanto'? " TO cEscolha
    
        if isalpha(cEscolha)
            if upper(cEscolha) == "PARA"
                nMedia := nPara() / 4
                bLoop := .F.
                
            elseif upper(cEscolha) == "ENQUANTO"
                nMEdia := nEnquanto() / 4
                bLoop := .F.
                
            else
                QOUT("Opção inválida,digite 'Para' ou 'Enquanto'!")

            end if
        else
            QOUT("Opção inválida,digite 'Para' ou 'Enquanto'!")
            
        end if
    end do


    // Condição para aprovação do aluno
    if nMedia >= 7
        QOUT("Você foi APROVADO com média : " + Alltrim(Str(nMedia)))

    else
        ACCEPT "Digite sua nota do exame: " to nExame
        nMedia :=  (nMedia + Val(nExame)) / 2

        if nMEdia >= 5
            QOUT("Você foi APROVADO POR EXAME com média: "  + Alltrim(Str(nMedia)))
            
        else
            QOUT("Você foi REPROVADO com média: " + Alltrim(Str(nMedia)))

        end if
    end if

RETURN nil

function nPara()

    local nI
    local nNota
    local nTotal := 0

    // Laço for para obter a notas
    for nI := 1 TO 4
        ACCEPT "Digite sua nota: " TO nNota
        nNota := Val(nNota)
        if nNota < 0 .OR. nNota > 10    // Certifica que o número seja entre 0 e 10
            QOUT("Número inválido, tente novamente!")
            nI --
        else
            nTotal += nNota
        end if

    next nI

RETURN nTotal

function nEnquanto()


    local nI := 1
    local nNota
    local nTotal := 0

    // Laço while para obter a notas
    while nI <= 4
        ACCEPT "Digite sua nota: " TO nNota

        if nNota < 0 .OR. nNota > 10    // Certifica que o número seja entre 0 e 10
            QOUT("Número inválido, tente novamente!")
        else
            nTotal += Val(nNota)
            nI ++
        end if
    end do

RETURN nTotal
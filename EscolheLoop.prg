function escolhe()

    local bLoop := .T.
    local cEscolha

    while bLoop 
        ACCEPT "Gostaria de fazer com o laço 'Para' ou 'Enquanto'? " TO cEscolha
        
        if upper(cEscolha) == "PARA"
            nPara() // Chama função nPara
            bLoop := .F.
        elseif upper(cEscolha) == "ENQUANTO"
            nEnquanto() // Chama função nEnquanto
            bLoop := .F.
        else
            QOUT("Opção inválida, digite 'Para' ou 'Enquanto'!")  
        end if
    end do

RETURN nil

function escolheUsuario(nNum, nLimite)

    local bLoop := .T.
    local cEscolha

    while bLoop 
        ACCEPT "Gostaria de fazer com o laço 'Para' ou 'Enquanto'? " TO cEscolha
        
        if upper(cEscolha) == "PARA"
            nPara(nNum, nLimite) // Chama função nPara
            bLoop := .F.
        elseif upper(cEscolha) == "ENQUANTO"
            nEnquanto(nNum, nLimite) // Chama função nEnquanto
            bLoop := .F.
        else
            QOUT("Opção inválida, digite 'Para' ou 'Enquanto'!")  
        end if
    end do

RETURN nil
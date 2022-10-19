function Desvio()

    local bLoop := .T.
    local cEscolha

    while bLoop 
        ACCEPT "Gostaria de fazer com o laço 'Para', 'Desvio' ou 'Enquanto'? " TO cEscolha
        
        if upper(cEscolha) == "PARA"
            nPara() // Chama função nPara
            bLoop := .F.
        elseif upper(cEscolha) == "ENQUANTO"
            nEnquanto() // Chama função nEnquanto
            bLoop := .F.
        elseif upper(cEscolha) == "DESVIO"
            nDesvio()
            bLoop := .F.
        else
            QOUT("Opção inválida, digite 'Para' ou 'Enquanto'!")  
        end if
    end do

RETURN nil
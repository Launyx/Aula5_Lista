function main()

    // Variável pra caramba
    local cUsername
    local tUsername
    local nSenha
    local nConfirma
    local aSenha := {}
    local bLoop := .T.
    local bLoopsen := .T.
    local bConfirma := .T.
    local nI
    local contd
    local temdigito
    local temLETRA
    local confLet := .F.
    local confNum := .F.
    local confSim := .F.

    // Loop para certificar que o usuário digite tudo corretamente
    while bLoop
        ACCEPT "Digite seu nome de usuário: " TO cUsername
        tUsername := len(Alltrim(cUsername))

        if tUsername > 5
            while bLoopsen
                ACCEPT "Digite uma senha com pelo menos 6 caracteres tendo pelo menos um número, uma letra maiúscula e um símbolo: " TO nSenha
                
                for nI := 1 TO len(nSenha)
                    AAdd(aSenha, SubStr(nSenha, nI, 1)) // Adiciona caractere por caractere da senha a uma string
                    
                next nI

                if len(aSenha) >= 6
                    for contd := 1 TO len(aSenha)
                        temdigito := IsDigit(aSenha[contd]) // Verifica se os elementos são digitos
                        temLETRA := IsAlpha(aSenha[contd]) // Verifica se os lementos são letras

                        if temdigito == .T. 
                            confNum := .T.  // Confirmação caso pelo menos um elemento da senha seja um digito
                        end if

                        if temLETRA == .T.
                            if aSenha[contd] == Upper(aSenha[contd])
                                confLet := .T.  // Confirmação caso pelo menos um elemento da senha seja uma letra maiúscula

                            end if
                        end if

                        if temdigito == .F. .AND. temLETRA == .F.
                            confSim := .T. // Confirma caso o elemento não seja letra nem número, logo é um símbolo

                        end if
                    next cont

                    if confLet .AND. confNum .AND. confSim // Condição caso a senha tenha uma letramaiuscula, um número e um símbolo
                        while bConfirma
                            ACCEPT "Confirme sua senha: " TO nConfirma
        
                            if nConfirma == nSenha  // Condição para confirmar se a segunda senha digitada é igual a primeira
                                QOUT("Processo finalizado com sucesso!")
                                bConfirma := .F.
                                bLoopsen := .F.
                            else
                                QOUT("Senhas diferentes, tente novamente")
                            end if
                        end do
                    else
                        QOUT("Senha inválida, digite pelo menos uma letra maiúscula, um número e um símbolo.")
        
                    end if
                else
                    QOUT("Quantidade de caracteres inválida.")

                end if
            end do

            wait
        end if
    end do

RETURN nil
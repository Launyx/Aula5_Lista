function main()

    local bLoop := .T.
    local cSexo
    local cNome

    // Loop para continuar perguntando enquanto usuário não colocar os dados corretamente
    do while bLoop == .T.
        ACCEPT "Digite seu sexo, M/F: " TO cSexo
        ACCEPT "digite seu nome: " TO cNome

        // Laço para verificar se os dados digitados são alfanuméricos
        if isalpha(cSexo) == .T. .AND. isalpha(cNome) == .T.

            // Laços para verificar se o sexo digitado é M ou F
            if upper(cSexo) == "M"
                QOUT(Chr(10) + "Ilmo. Sr.")
                QOUT(cNome)
                bLoop := .F.
                
            elseif upper(cSexo) == "F"
                QOUT(Chr(10) + "Ilma. Sra.")
                QOUT(cNome)
                bLoop := .F.

            else
                QOUT("Sexo inválido, digite 'M' ou 'F'")
            end if

        else
            QOUT("Nome inválido, digite seu nome novamente")
        end if
    end do

RETURN nil
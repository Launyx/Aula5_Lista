REQUEST HB_GT_WIN_DEFAULT
// Precisa ser compilado, terminal pequeno
SET PROCEDURE TO EscolheLoop.prg

function main()

    // Iniciando variáveis
    local nNum
    local nTotal
    local nRandom
    local nMult
    local bLoop := .T.
    local bEscolha := .T.
    local cLaco

    // Loop while para certificar que os valores digitados são números
    while bLoop
        ACCEPT "Digite um número para saber seus múltiplos: " TO nNum
        ACCEPT "Digite quantos números aleatórios você quer saber: " TO nTotal
  
        // Condição para sair do loop caso os valores digitados forem números
        if isdigit(nNum) .AND. isdigit(nTotal)
            nNum := Val(nNum)
            nTotal := Val(nTotal)
            bLoop := .F.
        else
            QOUT("Valores inválidos, tente novamente!")
        end if

    end do

    // Loop para perguntar e certificar que o usuário escolhe um dos laços
    escolheUsuario(nNum, nTotal)
    
    Wait

RETURN nil

function nPara(nNum, nTotal)

    // Iniciando variaveis locais
    local nI
    local nRandom := 0

    // Laço for para gerar a quantidade de números aleatórios escolhida pelo usuário
    for nI := 1 TO nTotal
        nRandom := Random()%99 // Gera números aleatórios entre 0 e 99
        if Mod(nRandom, nNum) == 0 // Condição que verifica se o número é divisível pelo valor escolhido pelo usuário
            QOUT(Alltrim(StrZero(nRandom, 3) + " é múltiplo de " + Alltrim(Str(nNum))))

        end if
    next nI

RETURN .t.

function nEnquanto(nNum, nTotal)

    // Iniciando variaveis locais
    local nCont := 1
    local nRandom

    // Laço while para gerar a quantidade de número
    while nCont <= nTotal
        nRandom := Random()%99 // Gera números aleatórios entre 0 e 99
        if Mod(nRandom, nNum) == 0 // Condição que verifica se o número é divisível pelo valor escolhido pelo usuário
            QOUT(Alltrim(StrZero(nRandom, 3) + " é múltiplo de " + Alltrim(Str(nNum))))
            
        end if
        nCont ++
    end do

RETURN .t.
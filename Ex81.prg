#include "inkey.ch"

function main()

    local escCom
    local escPes
    local ponCom := 0
    local ponPes := 0
    local lingua
    local bLoop := .T.

    while bLoop
        ACCEPT "Portugues / English " TO lingua

        if upper(lingua) == "PORTUGUES"
            do while inkey(1) != K_ESC
                computador(@escCom)
                Pessoa(@escPes)
                jokenpo(escCom, escPes, @ponCom, @ponPes)
                placar(ponPes, ponCom)
                QOUT("Aperte 'ESC' para sair..." + Chr(10))
                millisec(1000)
            end do
            bLoop := .F.
        elseif upper(Lingua) == "ENGLISH"
            do while inkey(1) != K_ESC
                computer(@escCom)
                Person(@escPes)
                rockpaperscissor(escCom, escPes, @ponCom, @ponPes)
                score(ponPes, ponCom)
                QOUT("Press 'ESC' to exit..."+ Chr(10))
                millisec(1000)
            end do
            bLoop := .F.
        else
            QOUT("Opção inválida / Invalid option")
        end if
    end do

RETURN nil

function Computador(escCom)

    escCom := Random()%8 + 1
    escCom := Int(escCom / 3) + 1

RETURN nil

function Pessoa(escPes)

    local bLoop := .T.

    while bLoop
        ACCEPT "Digite o valor da sua jogada: '1. Pedra / 2. Papel / 3.Tesoura: " TO escPes

        escPes := Val(escPes)
        if  escPes != 1 .AND.  escPes != 2 .AND.  escPes != 3
            QOUT("Escolha inválida, tente novamente!")
        else
            bLoop := .F.
        end if


    end do   

RETURN nil

function jokenpo(escCom, escPes, ponCom, ponPes)

    local bLoop := .T.
        do while bLoop 
            if escCom == escPes
                QOUT(Chr(10) + "Empate!")
                bLoop := .F.

            elseif escCom == 1 .AND. escPes == 2
                QOUT("     _______               _______     ")
                QOUT("---'    ____)____         (____   '----")
                QOUT("           ______)       (____)        ")
                QOUT("          _______)       (____)        ")
                QOUT("         _______)         (___)        ")
                QOUT("---.__________)            (___)__.----")

                QOUT(Chr(10) + "Você ganhou!")
                QOUT("VOCÊ - Papel X Pedra - COMPUTADOR")
                ponPes ++
                bLoop:= .F.

            elseif escCom == 1 .AND. escPes == 3
                QOUT("    _______                _______    ")
                QOUT("---'   ____)____          (____   '---")
                QOUT("          ______)        (____)       ")
                QOUT("       __________)       (____)       ")
                QOUT("      (____)              (___)       ")
                QOUT("---.__(___)                (___)__.---")

                QOUT(Chr(10) + "Você perdeu!")
                QOUT("VOCÊ - Tesoura X Pedra - COMPUTADOR")
                ponCom ++
                bLoop:= .F.

            elseif escCom == 2 .AND. escPes == 1
                QOUT("    _______                   ________    ")
                QOUT("---'   ____)             ____(____    '---")
                QOUT("      (_____)           (______           ")
                QOUT("      (_____)           (_______          ")
                QOUT("      (____)             (_______         ")
                QOUT("---.__(___)                (__________.---")

                QOUT(Chr(10) + "Você perdeu!")
                QOUT("VOCÊ - Pedra X Papel - COMPUTADOR")
                ponCom ++
                bLoop:= .F.

            elseif escCom == 2 .AND. escPes == 3
                QOUT("    _______                  ________    ")
                QOUT("---'   ____)____        ____(____    '---")
                QOUT("          ______)      (______           ")
                QOUT("       __________)     (_______          ")
                QOUT("      (____)            (_______         ")
                QOUT("---.__(___)               (__________.---")

                QOUT(Chr(10) + "Você ganhou!")
                QOUT("VOCÊ - Tesoura X Papel - COMPUTADOR")
                ponPes ++
                bLoop:= .F.

            elseif escCom == 3 .AND. escPes == 1
                QOUT("    _______                 _______    ")
                QOUT("---'   ____)          _____(____   '---")
                QOUT("      (_____)        (_______          ")
                QOUT("      (_____)        (__________       ")
                QOUT("      (____)               (____)      ")
                QOUT("---.__(___)                 (___)__.---")

                QOUT(Chr(10) + "Você Ganhou!")
                QOUT("VOCÊ - Pedra X Tesoura - COMPUTADOR")
                ponPes ++
                bLoop:= .F.

            elseif escCom == 3 .AND. escPes == 2
                QOUT("     _______                    _______    ")
                QOUT("---'    ____)____         _____(____   '---")
                QOUT("           ______)       (_______          ")
                QOUT("          _______)       (__________       ")
                QOUT("         _______)              (____)      ")
                QOUT("---.__________)                 (___)__.---")

                QOUT(Chr(10) + "Você Perdeu!")
                QOUT("VOCÊ - Papel X Tesoura - COMPUTADOR")
                ponCom ++
                bLoop:= .F.

            end if
        end do

RETURN nil

function placar(ponPes, ponCom)

    QOUT("Você - " + Alltrim(Str(ponPes)) + " X " +  Alltrim(Str(ponCom)) + " - Computador")

RETURN nil
function Computer(escCom)

    escCom := Random()%8 + 1
    escCom := Int(escCom / 3) + 1

RETURN nil

function Person(escPes)

    local bLoop := .T.

    while bLoop
        ACCEPT "Enter the value of your move: '1. Rock / 2. Paper / 3.Scissor: " TO escPes

        escPes := Val(escPes)
        if  escPes != 1 .AND.  escPes != 2 .AND.  escPes != 3
            QOUT("Invalid choice, try again!")
        else
            bLoop := .F.
        end if


    end do   

RETURN nil

function RockPaperscissor(escCom, escPes, ponCom, ponPes)

    local bLoop := .T.
        do while bLoop 
            if escCom == escPes
                QOUT(Chr(10) + "Tie!")
                bLoop := .F.

            elseif escCom == 1 .AND. escPes == 2
                QOUT("     _______               _______     ")
                QOUT("---'    ____)____         (____   '----")
                QOUT("           ______)       (____)        ")
                QOUT("          _______)       (____)        ")
                QOUT("         _______)         (___)        ")
                QOUT("---.__________)            (___)__.----")

                QOUT(Chr(10) + "You win!")
                QOUT("YOU - Paper X Rock - COMPUTER")
                ponPes ++
                bLoop:= .F.

            elseif escCom == 1 .AND. escPes == 3
                QOUT("    _______                _______    ")
                QOUT("---'   ____)____          (____   '---")
                QOUT("          ______)        (____)       ")
                QOUT("       __________)       (____)       ")
                QOUT("      (____)              (___)       ")
                QOUT("---.__(___)                (___)__.---")

                QOUT(Chr(10) + "You lost!")
                QOUT("YOU - Scissors X Rock - COMPUTER")
                ponCom ++
                bLoop:= .F.

            elseif escCom == 2 .AND. escPes == 1
                QOUT("    _______                   ________    ")
                QOUT("---'   ____)             ____(____    '---")
                QOUT("      (_____)           (______           ")
                QOUT("      (_____)           (_______          ")
                QOUT("      (____)             (_______         ")
                QOUT("---.__(___)                (__________.---")

                QOUT(Chr(10) + "You lost!")
                QOUT("YOU - Rock X Paper - COMPUTER")
                ponCom ++
                bLoop:= .F.

            elseif escCom == 2 .AND. escPes == 3
                QOUT("    _______                  ________    ")
                QOUT("---'   ____)____        ____(____    '---")
                QOUT("          ______)      (______           ")
                QOUT("       __________)     (_______          ")
                QOUT("      (____)            (_______         ")
                QOUT("---.__(___)               (__________.---")

                QOUT(Chr(10) + "You win!")
                QOUT("YOU - Scissor X Paper - COMPUTER")
                ponPes ++
                bLoop:= .F.

            elseif escCom == 3 .AND. escPes == 1
                QOUT("    _______                 _______    ")
                QOUT("---'   ____)          _____(____   '---")
                QOUT("      (_____)        (_______          ")
                QOUT("      (_____)        (__________       ")
                QOUT("      (____)               (____)      ")
                QOUT("---.__(___)                 (___)__.---")

                QOUT(Chr(10) + "You win!")
                QOUT("YOU - Rock X Scissor - COMPUTER")
                ponPes ++
                bLoop:= .F.

            elseif escCom == 3 .AND. escPes == 2
                QOUT("     _______                    _______    ")
                QOUT("---'    ____)____         _____(____   '---")
                QOUT("           ______)       (_______          ")
                QOUT("          _______)       (__________       ")
                QOUT("         _______)              (____)      ")
                QOUT("---.__________)                 (___)__.---")
                
                QOUT(Chr(10) + "You lost!")
                QOUT("YOU - Paper X Scissor - COMPUTER")
                ponCom ++
                bLoop:= .F.

            end if
        end do

RETURN nil

function Score(ponPes, ponCom)

    QOUT("YOU - " + Alltrim(Str(ponPes)) + " X " +  Alltrim(Str(ponCom)) + " - COMPUTER")

RETURN nil
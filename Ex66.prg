// taxa, valor do produto, acrescimo, decrescimo
// acresc nTaxaAum := (1 + (Val(ntaxa) / 100)) * Val(nProd)
// decres nTaxaDes := (1 - (Val(ntaxa) / 100)) * Val(nProd)
#include "inkey.ch"

function main()

    local nTaxa, nProd, cEsco, nValor
    local bLoop := .T.

    do while bLoop

        ACCEPT "Insira a letra do calculo desejado: A - acréscimo ou B - decréscimo " TO cEsco

        if upper(cEsco) == "A"
            while inkey(0.5) != K_ESC
                ACCEPT "Digite o valor do produto: " TO nProd
                ACCEPT "Digite o valor da taxa: " TO nTaxa

                nProd := Val(nProd)

                if nProd > 0
                    nValor := nProd * (1 + (Val(nTaxa) / 100))
                    QOUT("Novo valor do produto: " + Alltrim(Str(nValor)))
                    QOUT("Pressione ESC para sair ou aguarde um momento...")
                    millisec(1500)
                    bLoop := .F.

                else
                    QOUT("Valor inválido, por favor digite um valor positivo!")

                end if
            end do
        elseif upper(cEsco) == "D"
            while inkey(0.5) != K_ESC
                ACCEPT "Digite o valor do produto: " TO nProd
                ACCEPT "Digite o valor da taxa: " TO nTaxa

                nProd := Val(nProd)
                if nProd > 0
                    nValor := nProd * (1 - (Val(nTaxa) / 100))
                    QOUT("Novo valor do produto: " + Alltrim(Str(nValor)))
                    QOUT("Pressione ESC para sair ou aguarde um momento...")
                    millisec(1500)
                    bLoop := .F.

                else
                    QOUT("Valor inválido, por favor digite um valor positivo!")
                end if
            end do
        else
            QOUT("Opção inválida, digite 'A' ou 'B'!")

        end if
     
    end do

RETURN nil
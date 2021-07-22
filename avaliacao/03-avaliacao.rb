# (valor = 1.5)
# 3) Defina uma função “altura_escada” que deve receber um número inteiro para representar a altura da escada 
# e deve retornar um array de strings para representar graficamente a escada.
# Valide o parâmetro da altura da escada, que deve ser um número maior ou igual a 1. 
# Caso contrário, a função deve retornar um array vazio.
# Ex.:
# puts(altura_escada(1))
# # deve imprimir
# #
# puts(altura_escada(2))
# # deve imprimir
# _#
# ##
# puts(altura_escada(3))
# # deve imprimir
# __#
# _##
# ###
# puts(altura_escada(5))
# # deve imprimir
# ____#
# ___##
# __###
# _####
# #####
# puts(altura_escada(0))
# # deve imprimir nada, pois tem que retornar um array vazio

def altura_escada(numero)
    array = []
    controle = 0
    if numero >= 1
        for linha in (1..numero)
            for coluna in (1..numero)
                array[controle] = "_" * (numero - linha) + "#" * linha
            end
            controle = controle + 1
        end
        return array
    else
        return array
    end
end

puts(altura_escada(5))
puts
puts(altura_escada(1))
puts
puts(altura_escada(7))
puts
puts(altura_escada(10))
puts
puts(altura_escada(0))
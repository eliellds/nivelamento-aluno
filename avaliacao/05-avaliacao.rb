# (valor = 2.0)
# 5) O número PI ou 3.14159... pode ser obtido através de várias fórmulas. Uma forma simples de obtê-lo 
# é pela fórmula de Leibniz, que diz que a convergência da seguinte série infinita é igual a PI:
# PI = 4/1 - 4/3 + 4/5 - 4/7 + 4/9 - 4/11 ...
# Escreva uma função chamada "calcula_pi" que recebe o número de termos a serem usados na fórmula 
# de Leibniz para obter o valor de PI. O resultado do cálculo deve ser retornado pela função.
# Valide o número de termos. Deve ser um número inteiro maior ou igual 1. Se a validação falhar, 
# a função retorna nil.
# OBS.: Não se esqueçam que o retorno da função deve ser um número ponto flutuante!
# Ex:
# puts(calcula_pi(4))
# # deve retornar o valor de (4/1 - 4/3 + 4/5 - 4/7), ou seja, 2.8952380952380956
# # note que a expressão tem 4 termos, pois 4 foi o número de termos informado no parâmetro.

def calcula_pi(numero_termos)
    if numero_termos != numero_termos.to_i || numero_termos < 1
        return nil
    else
        resultado = 0.0
        operador = 0 # 0 == positivos && 1 == negativos
        controle = 1.0
        for repeticao in (1..numero_termos)
            if numero_termos == 1
                resultado = 4.0 / controle
                return resultado
            elsif operador == 0
                resultado = resultado + (4 / controle)
                operador = 1
                controle = controle + 2
            else
                resultado = resultado - (4 / controle)
                operador = 0
                controle = controle + 2
            end
        end
        return resultado
    end
end

puts(calcula_pi(4))
puts
puts(calcula_pi(10000))
# (valor = 1.5)
# 2) Faça uma função chamada 'multiplica_arrays' que deve receber como parâmetros 2 arrays e deve retornar 
# um valor numérico que deve ser o resultado da soma da multiplicação entre os elementos que ocupam 
# a mesma posição em cada array.
# Ex.:
# puts multiplica_arrays([1, 2, 3], [10, 20, 30]) # deve imprimir 140
# Pois o resultado é igual a: (1*10) + (2*20) + (3*30)
# Obs.: Valide se os 2 arrays têm o mesmo tamanho. Caso não tiverem, a função deve retornar nil.

def multiplica_arrays(array_1, array_2)
    if array_1.size == array_2.size
        resultado = 0
        for n in (1..array_1.size)
            x = array_1[n-1] * array_2[n-1]
            resultado = resultado + x
        end
        return resultado
    else
        return nil
    end
end

puts multiplica_arrays([1, 2, 3], [10, 20, 30]) # deve imprimir 140
puts multiplica_arrays([4, 8, 16], [15, 30, 60])
puts multiplica_arrays([21, 42, 0], [9, 18, 27])
puts multiplica_arrays([21, 42, 0], [9, 18])
# 1) Fazer uma função chamada 'posicao_no_array' que recebe um array e um valor qualquer como parâmetros 
# e que deve retornar a posição da primeira ocorrência do valor no array. 
# Se o valor não existir no array, retornar -1.

def posicaoNoArray(array, valor)
    for indice in (0..array.size-1)
        if valor == array[indice]
            return indice
        end
    end
    return -1
end

encontrando = [ 33, 4, 76, 0, 13, 4, 76 ]

puts posicaoNoArray(encontrando, 76)


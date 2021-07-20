# Fazer uma função chamada 'remove_da_posicao' que recebe um array e a posição alvo como parâmetros 
# e que deve retornar um novo array sem o elemento da posição alvo que estava no array informado. 
# Se a posição alvo estiver fora do limite do array e apontar para o primeiro ou último elemento, 
# a função retorna o array inteiro.

def removeDaPosicao(array, posicao)
    if posicao >= array.size || posicao == 0 || posicao == array.size-1
        return array
    else
        novoArray = []
        for remover in (0..posicao-1)
            novoArray[remover] = array[remover]
            for remover in (posicao..array.size-2)
                novoArray[remover] = array[remover+1]
            end
        end
    end
    return novoArray
end

def exibeArray(array)
    for imprimir in (0..array.size-1)
        print array[imprimir]
        if imprimir < array.size-1
            print ", "
        end
    end
    puts
end

grid = ["Hamilton", "Bottas", "Verstapen", "Perez", "Leclerc", "Norris", "Ricciardo", "Sainz", "Vettel"]
exibeArray(grid)
puts

posicaoRemover = 2

grid = removeDaPosicao(grid, posicaoRemover)
exibeArray(grid)
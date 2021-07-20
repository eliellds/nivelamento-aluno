# Fazer uma função chamada 'remove_da_posicao' que recebe um array e a posição alvo como parâmetros 
# e que deve retornar um novo array sem o elemento da posição alvo que estava no array informado. 
# Se a posição alvo estiver fora do limite do array e apontar para o primeiro ou último elemento, 
# a função retorna o array inteiro.

# primeira forma encontrada

# def removeDaPosicao(array, posicao)
#     if posicao <= 0 || posicao >= array.size-1
#         return array
#     else
#         novoArray = []
#         for manter in (0..posicao-1)
#             novoArray[manter] = array[manter]
#             for trocar in (posicao..array.size-2)
#                 novoArray[trocar] = array[trocar+1]
#             end
#         end
#     end
#     return novoArray
# end

# versão após resolução
def removeDaPosicao(array, posicao)
    if posicao <= 0 || posicao >= array.size-1
        return array
    else
        novoArray = []
        incrementar = 0
        for manter in (0..array.size-1)
            if posicao == manter
                next
            else
                novoArray[incrementar] = array[manter]
                incrementar = incrementar + 1
            end
        end
        return novoArray
    end
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
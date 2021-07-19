# Fazer uma função chamada 'insere_no_array' que recebe um array, um valor qualquer 
# e a posição alvo como parâmetros e que deve inserir o valor informado na posição alvo, 
# de modo a 'empurrar para a frente' os demais elementos e ao final retornar true. 
# Se a posição alvo não estiver no limite do array, a função deve retornar false.

def insereNoArray(array, valor, posicao)
    if posicao > array.size-1
        return false
    else
        insere = array.size
        until insere == posicao
            array[insere] = array[insere-1]
            insere = insere - 1
        end
        array[insere] = valor
        return true
    end
end

grid = [ "Hamilton", "Bottas", "Verstapen", "Perez", "Leclerc", "Norris" ]

piloto = "Alonso"
posicao = 4
if insereNoArray(grid, piloto, posicao) == false
    puts "Ayrton Senna Eterno!"
else 
    puts grid
end
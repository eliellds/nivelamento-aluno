# Escreva uma função chamada "calcula_media" que deve receber um array de números como parâmetro e deve retornar 
# o valor da média aritmética entre todos os números do array.
# puts(calcula_media([1, 2, -1, 3, 0, 7]))  # deve imprimir 2.0

def calcula_media(array)
    soma = 0.0
    for n in (0..array.size-1)
        soma = soma + array[n]
    end
    media = soma / array.size
    return media
end

puts(calcula_media([1, 2, -1, 3, 0, 7]))  # deve imprimir 2.0
puts
puts(calcula_media([4, 9, -3, 12, 1, 6]))
puts
puts(calcula_media([100, 60, 13, -13, -60, -100]))
# Faça uma função chamada 'mediana' que recebe um array de números e retorna a mediana entre eles.
# Lembrando que para obter a mediana de uma série de números, é necessário ordenar a série 
# (usar a função sort()) e retornar:
# - se a série tiver um número (n) ímpar de elementos, retornar o número da posição n/2 (a parte inteira);
# - e caso se a série tiver um número (n) par de elementos, retornar a média entre os números das posições 
# (n/2)-1 e (n/2)
# Ex.:
# puts(mediana([10, 0, -1, -500, 20, 100])) # deve imprimir 5.0
# puts(mediana([10, 0, -1, -500, 20]))      # deve imprimir 0.0

def mediana(array)
    array = array.sort()
    n = array.size.to_f
    soma = 0.0
    if array.size%2 != 0
        return array[n/2.0].to_f
    else
        return array[n/2.0]-1.0 + array[n/2.0] / 2.0
    end
end

puts(mediana([10, 0, -1, -500, 20]))      # deve imprimir 0.0
puts

puts(mediana([10, 0, -1, -500, 20, 90]))
puts

puts(mediana([21, 0, 12, -2, 30]))
puts

puts(mediana([47 , 23, 1, 100, 75, -5]))
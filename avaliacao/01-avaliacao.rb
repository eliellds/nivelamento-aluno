# (valor = 1.5)
# 1) Defina uma função chamada “produto”, que deve receber um array de números e que deve retornar
# o produto resultante entre eles (a multiplicação de todos os elementos entre si).
# Ex.:
# puts(produto([1, 4, 7]))               # deve imprimir 28
# puts(produto([10, 100, 1000, 0, -1]))  # deve imprimir 0

def produto(array)
    resultado = array[0]
    for multiplicacao in (1..array.size-1)
        resultado = resultado * array[multiplicacao]
    end
    return resultado
end

puts(produto([1, 4, 7]))               # deve imprimir 28
puts(produto([10, 100, 1000, 0, -1]))  # deve imprimir 0
puts(produto([2, 77, -12, 36 , 20]))
puts(produto([-90, 23, 15, 5, -21]))
# Faça uma função chamada 'menor_maior' que recebe um array de números e que deve retornar outro array, 
# contendo apenas 2 elementos: o primeiro deve ser o menor número do array informado e o segundo deve ser o maior.
# Ex.:
# print(menor_maior([10, 0, -1, -500, 20, 100])) # deve imprimir [-500, 100]
# puts

def menor_maior(array)
menor = nil
maior = nil
    for n in (1..array.size)
        for x in (1..array.size-1)
            if array[n-1] < array[x]
                if menor == nil || array[n-1] < menor
                    menor = array[n-1]
                end
            end
            if array[n-1] > array[x]
                if maior == nil || array[-1] > maior
                    maior = array[n-1]
                end
            end
        end
    end
    novo_array = [menor, maior]
        return novo_array
end

print menor_maior([10, 0, -1, -500, 20, 100]) # deve imprimir [-500, 100]
puts

print menor_maior([300, 20, 21, 900, 58, 77])
puts

print menor_maior([-30, 47, 6, 99, 15, 2])
puts
# Faça uma função chamada 'menor_maior' que recebe um array de números e que deve retornar outro array, 
# contendo apenas 2 elementos: o primeiro deve ser o menor número do array informado e o segundo deve ser o maior.
# Ex.:
# print(menor_maior([10, 0, -1, -500, 20, 100])) # deve imprimir [-500, 100]
# puts

# primeiro metodo encontrado

def menor_maior(array)
menor = array[0]
maior = array[array.size-1]
    for x in (0..array.size-1)
        if array[x+1] == nil
            if array[x] < menor
                menor = array[x]
            end
        elsif array[x] < array[x+1]
            if array[x] < menor
                menor = array[x]
            end
        end
    end
    for y in (0..array.size-1)
        if array[y+1] == nil
            if array[y] > maior
                menor = array[y]
            end
        elsif array[y] > array[y+1]
            if array[y] > maior
                maior = array[y]
            end
        end
    end
    novo_array = [menor, maior]
    return novo_array
end

# # apos resolucao

# def menor_maior(array)
#     menor = array[0]
#     maior = array[0]
#     for x in (0..array.size-1)
#         if array[x] < menor
#             menor = array[x]
#         elsif array[x] > maior
#             maior = array[x]
#         end
#     end
#     novo_array = [menor, maior]
#     return novo_array
# end

print menor_maior([10, 0, -1, -500, 20, 100]) # deve imprimir [-500, 100]
puts

print menor_maior([300, 20, 21, 900, 58, 77])
puts

print menor_maior([-30, 47, 6, 99, 15, 2])
puts

print menor_maior([300, 20, 21, 900, 58, 1001])
puts

print menor_maior([300, 20, 21, 900, 58, -1001])
puts
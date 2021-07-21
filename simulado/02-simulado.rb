# Defina uma função chamada “negativos_positivos”, que deve receber um array de números e que deve retornar 
# outro array com os seguintes 3 números:
# 1. Na primeira posição, o percentual de números do array que são positivos
# 2. Na segunda posição, o percentual de números do array que são zero
# 3. Na última posição, o percentual de números do array que são negativos
# print(negativos_positivos([1, 2, 0, -1]))
# print("\n")
# # deve imprimir o array [0.5, 0.25, 0.25]
# # pois há 50% de números positivos no array, 25% de números zero e 25% de números negativos

def negativos_positivos(array)
    positivos = 0.0
    zero = 0.0
    negativos = 0.0
    for n in (1..array.size)
        if array[n-1] > 0
            positivos = positivos + 1
        elsif array[n-1] == 0
            zero = zero + 1
        else
            negativos = negativos + 1
        end
    end
    novo_array = [(positivos / array.size), (zero / array.size), (negativos / array.size)]
    return novo_array
end

print(negativos_positivos([1, 2, 0, -1]))
print("\n")

print(negativos_positivos([3, 2, 0, 4, 5]))
print("\n")

print(negativos_positivos([-3, -7, 0, -1]))
print("\n")
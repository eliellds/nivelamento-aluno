def calcularMMC(numero1, numero2)
    if numero1 == 0 || numero2 == 0
        resultado = 0
    else
        mmc = 1
        resultado = 0
        while mmc >= 1
            if mmc / numero1 == numero2 && mmc / numero2 == numero1
                resultado = mmc
                break
            else
                mmc = mmc + 1
            end
        end
    end
    return resultado
end

puts "Prograga para calcular MMC"
puts
puts "Insira dois números: "

numero1 = gets.chomp.to_i
numero2 = gets.chomp.to_i
mmc = calcularMMC(numero1, numero2)

if mmc == 0
    puts "O número 0 é múltiplo de todos os números. Digite números inteiros diferentes de 0."
else
    puts "O MMC de " + numero1.to_s + " e " + numero2.to_s + " é: " + mmc.to_s
end
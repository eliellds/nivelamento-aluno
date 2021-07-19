# funcao para calcular MMC entre dois
def calculaMMC(numero1, numero2)
    x = numero1
    y = numero2
    resultado = 1
    divisor = 2
    until x == 1 && y == 1
        if x%divisor == 0 || y%divisor == 0
            resultado = resultado * divisor
            if x%divisor == 0
                x = x / divisor
            end
            if y%divisor == 0
                y = y / divisor
            end
        else
            divisor = divisor + 1
        end
    end
    return resultado
end

# funcao para validar os numeros
def validadorNumero(numero1, numero2)
    if numero1 == "0" || numero2 == "0"
        return true
    elsif numero1.to_i != 0 && numero2.to_i != 0
        return true
    else
        return false
    end
end

puts "Programa para calcular MMC entre dois números"
puts
resultado = false

while resultado == false
    print "Insira o primeiro número: "
    numero1 = gets.chomp
    print "Insira o segundo número: "
    numero2 = gets.chomp
    puts
    if validadorNumero(numero1, numero2) == false
        puts "Digite apenas números!"
        puts
    else
        if numero1.to_i == 0 || numero2.to_i == 0
            puts "MMC de 0 e outro número é: 0\nO número 0 é múltiplo de todos os números naturais."
            resultado = true
        elsif numero1.to_i < 0 || numero2.to_i < 0
            if numero1.to_i < 0
                numero1 = numero1.to_i * (-1)
            end
            if numero2.to_i < 0
                numero2 = numero2.to_i * (-1)
            end
            numero1 = numero1.to_i
            numero2 = numero2.to_i
            puts "MMC de " + numero1.to_s + " e " + numero2.to_s + " é: " + calculaMMC(numero1, numero2).to_s
            resultado = true
        else
            numero1 = numero1.to_i
            numero2 = numero2.to_i
            puts "MMC de " + numero1.to_s + " e " + numero2.to_s + " é: " + calculaMMC(numero1, numero2).to_s
            resultado = true
        end
    end
end
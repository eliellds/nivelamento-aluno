# funcao para calcular MMC entre dois
def calculaMMC(numero1, numero2)
    x = numero1
    y = numero2
    resultado = 1
    contador = 2
    until x == 1 && y == 1
        if x%contador == 0 || y%contador == 0
            resultado = resultado * contador
            if x%contador == 0
                x = x / contador
            end
            if y%contador == 0
                y = y / contador
            end
        else
            contador = contador + 1
        end
    end
    return resultado
end

puts "Programa para calcular MMC entre dois números"
puts
print "Insira o primeiro número: "
numero1 = gets.chomp.to_i
print "Insira o segundo número: "
numero2 = gets.chomp.to_i
puts
puts "MMC de " + numero1.to_s + " e " + numero2.to_s + " é: " + calculaMMC(numero1, numero2).to_s
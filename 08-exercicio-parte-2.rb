#este codigo esta sendo testado para encontrar maneiras de chegar ao resultado


def eh_primo(numero)
    for n in (2..numero-1)
        if numero % n == 0
            return false
        end
    end
    return true
end

numero1 = gets.chomp.to_i
numero2 = gets.chomp.to_i

def calculaMMC(numero1, numero2)
    x = numero1
    y = numero2
    resultado = 2
    contador = 2
    if 
    while x > 1 && y > 1
        if x%contador && y%contador == 0
            x = x / contador
            y = y / contador
            resultado = resultado * contador
        else x%contador == 0 || y%contador == 0
            if x%contador == 0
                x = x / contador
                resultado = resultado * contador
            elsif y%contador == 0
                y = y / contador
                resultado = resultado * contador
            else
                contador = contador + 1
            end
        end
    end
    return resultado
end

puts calculaMMC(numero1, numero2)
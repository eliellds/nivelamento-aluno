def exibe_array(array)
    for n in (0..array.size-1)
        print array[n]
        if n < array.size-1
            print ","
        end
    end
    puts
end

def existe_no_array(array, elemento)
    for conferir in (0..array.size-1)
        if array[conferir] == elemento
            return true
        end
    end
    return false
end

def sortear_numeros(qtd, limite_inicio, limite_fim)
    numeros_sorteados = []
    indice = 0
    dezenas = 0
    until indice == 6 && dezenas == 6
        numeros = rand(limite_inicio..limite_fim)
        if existe_no_array(numeros_sorteados, numeros) == false
            numeros_sorteados[indice] = numeros
            indice = indice + 1
            dezenas = dezenas + 1
        end
    end
    return numeros_sorteados
end

# qtd = 6
# limite_inicio = 1
# limite_fim = 60

# sorteio = sortear_numeros(qtd, limite_inicio, limite_fim)

# puts exibe_array(sorteio)

def validadorChute(chute)
    if chute.to_i >= 1 && chute.to_i <= 60
        return true
    else
        return false
    end
end

def obter_apostas(qtd, limite_inicio, limite_fim)
    numeros_apostados = []
    indice = 0
    dezenas = 0
    puts "Digite os números apostados ou digite OK para encerrar a aposta."
    while indice < 15 && dezenas < 15
        print (dezenas+1).to_s + "a. dezena: "
        numeros = gets.chomp
        if validadorChute(numeros)
            numeros = numeros.to_i
            if existe_no_array(numeros_apostados, numeros) == false
                numeros_apostados[indice] = numeros
                indice = indice + 1
                dezenas = dezenas + 1
            else
                puts "Não é permitido repetir números!"
                puts
            end
        else
            if indice >= 6 && (numeros == "OK" || numeros == "ok")
                return numeros_apostados
            elsif indice < 6 && (numeros == "OK" || numeros == "ok")
                puts "Insira ao menos 6 dezenas."
                puts
            else
                puts "Insira apenas números inteiros de 1 a 60."
                puts
            end
        end
    end
    return numeros_apostados
end

# apostas = obter_apostas(qtd, limite_inicio, limite_fim)
# puts apostas

# exibe_array(apostas)

def verificar_acertos(sorteados, apostados)
    numeros_acertados = []
    conferir = 0
    for repeticao in (1..sorteados.size)
        for incluir in (1..apostados.size)
            if sorteados[repeticao-1] == apostados[incluir-1]
                numeros_acertados[conferir] = apostados[incluir-1]
                conferir = conferir + 1
            end
        end
    end
    return numeros_acertados
end

# acertos = verificar_acertos(sorteio, apostas)

# print verificar_acertos(sorteio, apostas)

def mega_sena()
    sorteados = sortear_numeros(6, 1, 60)
    apostados = obter_apostas(6, 1, 60)
    acertados = verificar_acertos(sorteados, apostados)
    puts "Numeros sorteados: #{sorteados.to_s()}"
    puts "Numeros apostados: #{apostados.to_s()}"
    puts "Acertos: #{acertados.to_s()}"
end
mega_sena()
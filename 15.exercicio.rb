OUROS = "\u2666".encode('utf-8')
ESPADAS = "\u2660".encode('utf-8')
COPAS = "\u2665".encode('utf-8')
PAUS = "\u2663".encode('utf-8')
baralho = [
    "A"+OUROS, "A"+ESPADAS, "A"+COPAS, "A"+PAUS,
    "2"+OUROS, "2"+ESPADAS, "2"+COPAS, "2"+PAUS,
    "3"+OUROS, "3"+ESPADAS, "3"+COPAS, "3"+PAUS,
    "4"+OUROS, "4"+ESPADAS, "4"+COPAS, "4"+PAUS,
    "5"+OUROS, "5"+ESPADAS, "5"+COPAS, "5"+PAUS,
    "6"+OUROS, "6"+ESPADAS, "6"+COPAS, "6"+PAUS,
    "7"+OUROS, "7"+ESPADAS, "7"+COPAS, "7"+PAUS,
    "8"+OUROS, "8"+ESPADAS, "8"+COPAS, "8"+PAUS,
    "9"+OUROS, "9"+ESPADAS, "9"+COPAS, "9"+PAUS,
    "10"+OUROS, "10"+ESPADAS, "10"+COPAS, "10"+PAUS,
    "J"+OUROS, "J"+ESPADAS, "J"+COPAS, "J"+PAUS,
    "Q"+OUROS, "Q"+ESPADAS, "Q"+COPAS, "Q"+PAUS,
    "K"+OUROS, "K"+ESPADAS, "K"+COPAS, "K"+PAUS
]

def existe_no_array(array, elemento)
    for conferir in (0..array.size-1)
        if array[conferir] == elemento
            return true
        end
    end
    return false
end

def exibe_array(array)
    for i in (0..array.size-1)
        print(array[i])
        if i < array.size-1
            print(", ")
        end        
    end
    print("\n")
end

def embaralhador(baralho)
    baralho_embaralhado = []
    embaralhar = 0
    until embaralhar == baralho.size
        baguncinha = baralho[rand(0..baralho.size-1)]
        if existe_no_array(baralho_embaralhado, baguncinha) == false
            baralho_embaralhado[embaralhar] = baguncinha
            embaralhar = embaralhar + 1
        end
    end
    return baralho_embaralhado
end

puts "Baralho ANTES:"
exibe_array(baralho)
puts "Baralho DEPOIS:"
exibe_array(embaralhador(baralho))
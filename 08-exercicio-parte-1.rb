def calculoTabuada(numero)
    for tabuada in (0..10)
        resultado = numero * tabuada
        puts numero.to_s + " x " + tabuada.to_s + " = " + resultado.to_s
    end
    return tabuada
end

puts "Prograga calcular tabuada"
puts
print "Insira um número: "

numero = gets.chomp

if numero.to_i == 0
    if numero != "0"
        puts "Valor inválido! Digite apenas números."
    end
else
    numero = numero.to_i
    puts
    puts "A tabuada de " + numero.to_s + " é:"
    puts
    calculoTabuada(numero)
end
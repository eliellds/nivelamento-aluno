puts "Programa para calcular diâmetro, comprimento e área de um círculo."
puts
print "Por favor, informe o raio do círculo: "
raio = gets.chomp
raio = raio.to_f
puts

#funcao para calculo do diametro de um circulo
def calculoDiametro(raio)
    return raio * 2
end

diametro = calculoDiametro(raio)

#funcao para calculo de comprimento de um circulo
def calculoComprimento(raio)
    return calculoDiametro(raio) * Math::PI
end

comprimento = calculoComprimento(raio)

#funcao para calculo da area de um circulo
def calculoArea(raio)
    return raio ** 2 * Math::PI
end

area = calculoArea(raio)

puts "As medidas de um círculo cujo raio mede " + raio.to_s + " são:"
puts
puts "Diâmetro: " + diametro.to_s
puts "Comprimento: " + comprimento.to_s
puts "Área: " + area.to_s
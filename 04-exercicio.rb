#funcao para calculo do diametro de um circulo
def calculoDiametro(raio)
    return raio * 2
end

raio = 14.5
diametro = calculoDiametro(raio)
puts "O diâmetro de um círculo cujo raio mede " + raio.to_s + " é igual a " + diametro.to_s + "."


#funcao para calculo de comprimento de um circulo
def calculoComprimento(raio)
    return calculoDiametro(raio) * Math::PI
end

comprimento = calculoComprimento(raio)
puts "O comprimento de um círculo cujo diametro mede " + diametro.to_s + " é igual a " + comprimento.to_s + "."


#funcao para calculo da area de um circulo
def calculoArea(raio)
    return raio ** 2 * Math::PI
end

raio = 14.5
area = calculoArea(raio)
puts "A área de um círculo cujo raio mede " + raio.to_s + " é igual a " + area.to_s + "."
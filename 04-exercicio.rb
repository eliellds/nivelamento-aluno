raio = 14.5

#funcao para calculo do diametro de um circulo
def calculoDiametro(raio)
    diametro = raio * 2
    return diametro
end

diametro = calculoDiametro(raio)
puts "O diâmetro de um círculo cujo raio mede " + raio.to_s + " é igual a " + diametro.to_s + "."


#funcao para calculo de comprimento de um circulo
def calculoComprimento(diametro)
    comprimento = diametro * Math::PI
    return comprimento
end

comprimento = calculoComprimento (diametro)
puts "O comprimento de um círculo cujo diametro mede " + diametro.to_s + " é igual a " + comprimento.to_s + "."


#funcao para calculo da area de um circulo
def calculoArea(raio)
    area = raio ** 2 * Math::PI
    return area
end

area = calculoArea(raio)
puts "A área de um círculo cujo raio mede " + raio.to_s + " é igual a " + area.to_s + "."

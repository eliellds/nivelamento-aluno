puts "Programa para calcular estimativa de batimentos cardíacos baseado na idade do usuário."
puts
print "Olá!\nPor favor, informe seu nome: "
nome = gets.chomp
print "Agora, informe sua idade: "
anos = gets.chomp
anos = anos.to_i
puts

#funcao para calcular estimativa de batimentos baseado na quantidade de anos informada
def calculaEstimativaBatimentos(anos)
    estimativaBatimentos = anos * 365 * 24 * 60 * 80
    return estimativaBatimentos
end

estimativaBatimentos = calculaEstimativaBatimentos(anos)

puts nome + ", baseado em uma média de 80 batimentos por minuto, seu coração já bateu " + estimativaBatimentos.to_s + " vezes durante sua vida."
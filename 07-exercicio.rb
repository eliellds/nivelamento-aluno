# jogo de adivinhação

# vamos fazer o computador pensar num número (0 a 100)
# e depois vamos pedir para o jogador tentar adivinhar esse número

puts "Bem-vindo ao jogo de adivinhação!"
puts "O computador pensou em um número entre 0 e 100. Tente adivinhar!"

# computador pensando no número...
numero = rand(0..100)
puts "(" + numero.to_s + ")"

chute = gets.chomp

def validadorChute(chute)
    if chute == "0"
        return true
    elsif chute.to_i > 0 && chute.to_i <= 100
        return true
    else
        return false
    end
end

if validadorChute(chute) == false 
puts "Chute inválido! Insira apenas números inteiros entre 0 e 100."
elsif chute = chute.to_i
    if numero == chute
    puts "Acertou!"
    else
    puts "Errou!"
    end
end
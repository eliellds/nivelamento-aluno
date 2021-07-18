puts "Bem-vindo ao jogo de adivinhação!"
puts "O computador pensou em um número entre 0 e 100. Tente adivinhar!"

# computador pensando no número...
numero = rand(0..100)
puts "(" + numero.to_s + ")"

# funcao para verificar se o numero digirado eh valido ou nao
def validadorChute(chute)
    if chute == "0"
        return true
    elsif chute.to_i > 0 && chute.to_i <= 100
        return true
    else
        return false
    end
end

tentativas = 0
chute = gets.chomp
while true
    if validadorChute(chute) == false 
        puts "Chute inválido! Tente novamente."
        chute = gets.chomp
    elsif numero == chute.to_i
        tentativas = tentativas + 1
        puts "Acertou! Você fez " + tentativas.to_s + " tentativa(s) válida(s)."
        break
    else
        if chute.to_i < numero
            puts "Errou! O número correto é MAIOR que o digitado. Tente novamente."
            tentativas = tentativas + 1
            chute = gets.chomp
        elsif chute.to_i > numero
            puts "Errou! O número correto é MENOR que o digitado. Tente novamente."
            tentativas = tentativas + 1
            chute = gets.chomp
        end
    end
end
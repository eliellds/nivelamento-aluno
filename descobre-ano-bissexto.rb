puts "Programa para descobrir se um ano é bissexto"
puts
print "Insira um ano: "
ano = gets.chomp.to_i

#funcao para descobrir se um ano e bissexto
def descobrirAnoBissexto(ano)
    if ano%4 & ano%400 == 0
        return true
    else
        return false
    end
end

if descobrirAnoBissexto(ano) == true
    puts "O ano de " + ano.to_s + " é um ano bissexto."
else
    puts "O ano de " + ano.to_s + " não é um ano bissexto."
end
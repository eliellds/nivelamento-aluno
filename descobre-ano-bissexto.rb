# Se o ano for uniformemente divisível por 4, vá para a etapa 2. Caso contrário, vá para a etapa 5.
# Se o ano for uniformemente divisível por 100, vá para a etapa 3. Caso contrário, vá para a etapa 4.
# Se o ano for uniformemente divisível por 400, vá para a etapa 4. Caso contrário, vá para a etapa 5.
# O ano é bissexto (tem 366 dias).
# O ano não é um ano bissexto (tem 365 dias).

puts "Programa para descobrir se um ano é bissexto"
puts
print "Insira um ano: "
ano = gets.chomp.to_i

# funcao para descobrir se um ano e bissexto
def descobrirAnoBissexto(ano)
    if ano%4 == 0
        if ano%100 == 0
            if ano%400 == 0
                return true
            else
                return false
            end
        else
            return true
        end
    else
        return false
    end
end

if descobrirAnoBissexto(ano) == true
    puts "O ano de " + ano.to_s + " é um ano bissexto."
else
    puts "O ano de " + ano.to_s + " não é um ano bissexto."
end
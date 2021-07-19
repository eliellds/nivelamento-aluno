# 1) Desenhe um quadrado de 10 linhas por 10 colunas. Desenhar as bordas com “*”, preencher com “x”.

# primeira forma encontrada

# for cima in (1..10)
#     print "*"
# end
# puts

# for meio in (1..8)
#     for esquerdo in (1..1)
#         print "*"
#         for interno in (1..8)
#             print "x"
#         end
#         for direito in (1..1)
#         puts "*"
#         end
#     end
# end

# for base in (1..10)
#     print "*"
# end

# segunda forma encontrada, permite alterar as proporcoes do quadrado alterando o limite
linhaUm = false
centro = 1
base = false
limite = 10
until linhaUm == true && base == true
    if linhaUm == false
        for cima in (1..limite)
            print "*"
        end
        linhaUm = true
        puts
    elsif
        until centro == (limite-2)
            print "*"
            for meio in (1..limite-2)
                print "x"
            end
            puts "*"
            centro = centro + 1
        end
    else
        for base in (1..limite)
            print "*"
        end
        base = true
    end
end
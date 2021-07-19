# 2) Esse aqui é um desafio. Faça um código para obter esse resultado:
#         *
#         **
#         ***
#         ****
#         *****
#         ******
#         *******
#         ********
#         *********
#         **********

numero = 1
while numero <= 10
    for repeticao in (1..1)
        for linhas in (1..numero)
            print "*"
        end
        numero = numero + 1
        puts
    end
end
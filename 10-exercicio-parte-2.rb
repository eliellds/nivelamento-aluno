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

def imprimeTriangulo(base)
    for numero in (1..base)
        for linhas in (1..numero)
            print "*"
        end
        puts
    end
end

imprimeTriangulo(10)
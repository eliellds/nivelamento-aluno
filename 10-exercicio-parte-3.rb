# Desenhar uma pirâmide. O tamanho da base deve ser informado. Se o tamanho da base for tamanoBase par, 
# o topo terá "**", se for ímpar "*". Então, cada nível é preenchido até que o nível da base tenha 
# o mesmo número de "*" que o número informado.
#     **
#    ****
#   ******
#  ********
# **********
#        *
#       ***
#      *****
#     *******
#    *********
#   ***********
#  *************
# ***************
# Enviar como 10-exercicio-parte-3.rb

def piramide(tamanoBase)
    array = []
    indice = 0
    if tamanoBase >= 1
        if tamanoBase % 2 == 0
            estrelas = 2
            espacos = (tamanoBase / 2 - 1)
        else
            estrelas = 1
            espacos = (tamanoBase / 2)
        end
        while estrelas <= tamanoBase
            array[indice] = " " * (espacos) + "*" * (estrelas) + " " * (espacos)
            indice = indice + 1
            estrelas = estrelas + 2
            espacos = espacos - 1
        end
        return array
    else
        return nil
    end
end

puts piramide(21)
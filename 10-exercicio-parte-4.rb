# Quer mais? Tente fazer uma letra V, usando asteriscos “*” e
# underscores "_".

# _***************_
# *_*************_*
# **_***********_**
# ***_*********_***
# ****_*******_****
# *****_*****_*****
# ******_***_******
# *******_*_*******
# ********_********

def v(numero)
array = []
underline = 1
    for v in (1..numero)
        array[numero-1] = " " * (espacos) + "*" * (estrelas) + " " * (espacos)
        controle = controle + 1
        estrelas = estrelas + 2
        espacos = espacos - 1
end

puts v(9)
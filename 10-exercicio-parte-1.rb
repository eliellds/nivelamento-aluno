# 1) Desenhe um quadrado de 10 linhas por 10 colunas. Desenhar as bordas com “*”, preencher com “x”.

for cima in (1..10)
    print "*"
end
puts

for meio in (1..8)
    for esquerdo in (1..1)
        print "*"
        for interno in (1..8)
            print "x"
        end
        for direito in (1..1)
        print "*"
        puts
        end
    end
end

for base in (1..10)
    print "*"
end
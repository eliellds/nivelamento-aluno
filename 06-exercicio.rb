#funcao para definir fase pandemica
def fasePandemica(taxaDeVacinacao, fatorDeTransmissao, taxaOcupacionalDeLeitos)
    if taxaDeVacinacao >= 0.0 && taxaDeVacinacao <= 1.0 && fatorDeTransmissao >= 0.0 && taxaOcupacionalDeLeitos >= 0.0 && taxaOcupacionalDeLeitos <= 1.0
        if taxaDeVacinacao <= 0.8 && taxaOcupacionalDeLeitos > 0.9
            return "FASE ROXA"
        elsif taxaDeVacinacao <= 0.8 && (fatorDeTransmissao >= 1.0 || taxaOcupacionalDeLeitos > 0.8)
            return "FASE VERMELHA"
        elsif taxaDeVacinacao <= 0.8 && fatorDeTransmissao < 1.0 && taxaOcupacionalDeLeitos > 0.65
            return "FASE LARANJA"
        elsif taxaDeVacinacao <= 0.8 && fatorDeTransmissao < 1.0 && taxaOcupacionalDeLeitos > 0.5
            return "FASE AMARELA"
        elsif taxaDeVacinacao <= 0.8 && fatorDeTransmissao < 1.0 && taxaOcupacionalDeLeitos <= 0.5
            return "FASE VERDE"
        else
            return "FASE AZUL"
        end
    else
        if taxaDeVacinacao < 0.0 || taxaDeVacinacao > 1.0
            return "Taxa de vacinação deve ser um número entre 0.0 e 1.0 (1.0 = 100%)"
        elsif fatorDeTransmissao < 0.0
            return "Fator de transmissão dever ser um número maior ou igual a zero"
        else
            return "Taxa de ocupação de leitos deve ser um número entre 0.0 e 1.0 (1.0 = 100%)"
        end
    end
end

#testes
puts fasePandemica(0.81, 2.0, 0.0) #teste azul
puts fasePandemica(0.81, 0.3, 0.7) #teste azul
puts fasePandemica(0.81, 3.0, 0.91) #teste azul
puts fasePandemica(0.1, 0.7, 0.5) #teste verde
puts fasePandemica(0.8, 0.9, 0.03) #teste verde
puts fasePandemica(0.3, 0.0, 0.65) #teste amarela
puts fasePandemica(0.79, 0.99, 0.66) #teste laranja
puts fasePandemica(0.5, 1.0, 0.9) #teste vermelha
puts fasePandemica(0.5, 0.0, 0.9) #teste vermelha
puts fasePandemica(0.2, 0.7, 1.0) #teste roxa
puts fasePandemica(0.2, 10, 0.91) #teste roxa
puts fasePandemica(0.2, 30, 0.99) #teste roxa
puts
#testes de erros
puts fasePandemica(99, 0.0, 38) #erro vacinacao
puts fasePandemica(30, -1, 0.0) #erro vacinacao
puts fasePandemica(0.81, 0.0, 30) #erro ocupacao
puts fasePandemica(0.81, -1, 30) #erro transmissao
puts fasePandemica(0.0, 0.0, 30) #erro ocupacao
horasDia = 24
minutosDia = horasDia * 60.0
segundosDia = minutosDia * 60.0
quantidadeAnos = 5
diasAno = 365
decada = 10
quantidadeDecadas = 7
idade = 26
anosSegundos = 1232000000


#função para calculo de horas em uma determinada quantidade de anos
def calculaHorasAnos(horasDia, diasAno, quantidadeAnos)
    horasAno = horasDia * diasAno * quantidadeAnos
    return horasAno
end

horasAno = calculaHorasAnos(horasDia, diasAno, quantidadeAnos)
puts quantidadeAnos.to_s + " ano(s) têm " + horasAno.to_s + " horas."


#função para calculo de minutos em uma determinada quantidade de decadas
def calculaMinutosDecadas(minutosDia, diasAno, decada, quantidadeDecadas)
    minutosDecadas = minutosDia * diasAno * decada * quantidadeDecadas
    return minutosDecadas
end

minutosDecadas = calculaMinutosDecadas(minutosDia, diasAno, decada, quantidadeDecadas)
puts quantidadeDecadas.to_s + " decada(s) têm " + minutosDecadas.to_s + " minutos."


#funcao para calculo da idade em segundos
def calculaIdadeSegundos(segundosDia, diasAno, idade)
    idadeSegundos = segundosDia * diasAno * idade
    return idadeSegundos
end

idadeSegundos = calculaIdadeSegundos(segundosDia, diasAno, idade)
puts "Se sua idade é " + idade.to_s + " ano(s), então você tem " + idadeSegundos.to_s + " segundos de vida."


#funcao para converter segundos em anos
def calculaSegundosAnos(anosSegundos, segundosDia, diasAno)
    segundosAnos = anosSegundos / (segundosDia * diasAno)
    return segundosAnos
end

segundosAnos = calculaSegundosAnos(anosSegundos, segundosDia, diasAno)
puts anosSegundos.to_s + " segundos equivalem a " + segundosAnos.to_s + " ano(s)."
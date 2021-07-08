horasDia = 24
minutosDia = horasDia * 60.0
segundosDia = minutosDia * 60.0
ano = 1
diasAno = 365
decada = ano * 10
minhaIdade = 26
idadeSegundos = 1232000000

puts "Quantidade de horas em um ano (não bissexto)"
puts horasDia * diasAno
puts "Quantidade de minutos em uma década (considerando anos bissextos)"
puts minutosDia * diasAno * decada + (minutosDia * 3)
puts "Minha idade em segundos (considerando anos bissextos)"
puts segundosDia * diasAno * minhaIdade + (segundosDia * 7)
puts "Quantidade de chocolates que pretendo comer na vida"
puts 56 * 90
puts "Se minha idade é 1232 milhões de segundos, qual é minha idade em anos?"
puts idadeSegundos / (segundosDia * diasAno)
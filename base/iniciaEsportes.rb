$:.push './'
require 'tables/esporte.rb'

puts 'Inserindo dados em Esportes...'
sport = Esporte.new ({ :nome => "futebol"})
sport.save

sport = Esporte.new ({ :nome => "basquete"})
sport.save

sport = Esporte.new ({ :nome => "volei"})
sport.save

sport = Esporte.new ({ :nome => "truco"})
sport.save

puts 'OK'
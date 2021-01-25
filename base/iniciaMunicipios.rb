$:.push './'
require 'tables/estado.rb'
require 'tables/municipio.rb'

puts 'Inserindo dados em Municipios...'
state = Estado.find_by_sigla("PR")

county = Municipio.new ()
county.nome = "Abatiá"
county.estado = state
county.save

county = Municipio.new ()
county.nome = "Adrianópolis"
county.estado = state
county.save

puts 'OK'
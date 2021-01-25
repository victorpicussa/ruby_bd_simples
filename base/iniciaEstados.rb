$:.push './'
require 'tables/estado.rb'

puts 'Inserindo dados em Estados...'
# Método 1
state = Estado.new ()
state.nome = "Acre"
state.sigla = "AC"
state.save

# Método 2
state = Estado.new ({:nome => "Alagoas", :sigla => "AL"})
state.save

# Método 3
state_list = [
    {:nome => "Bahia", :sigla => "BA"},
    {:nome => "Ceará", :sigla => "CE"},
    {:nome => "Sergipe", :sigla => "SE"},
    {:nome => "Tocantins", :sigla => "TO"},
]

state_list.each do |e|
    state = Estado.new ()
    state.nome = e[:nome]
    state.sigla = e[:sigla]
    state.save
end

puts 'OK'
$:.push './'
require 'tables/estado.rb'
require 'tables/pessoa.rb'

puts 'Inserindo dados em Pessoas...'
# Método 1: inclusão via chave primária
person = Pessoa.new ({:sobrenome => "Silva", :nome => "Joao",
                :endereco => "Rua 1"})
person.estado_id = 1
person.save

# Método 2: inclusão pelo id obtido pela busca na tabela
person = Pessoa.new ({:sobrenome => "Silva", :nome => "Jose",
                :endereco => "Rua 2"})
state = Estado.find_by_sigla("AL")
person.estado_id = state.id
person.save

# Método 3: inclusão usando o objeto
person = Pessoa.new ({:sobrenome => "Silva", :nome => "Maria",
                :endereco => "Rua 3"})
state = Estado.find_by_sigla("AM")
person.estado = state
person.save

puts 'OK'
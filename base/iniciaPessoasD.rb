$:.push './'
require 'tables/pessoa.rb'
require 'tables/estado.rb'
require 'tables/documento.rb'

puts 'Inserindo dados em Documentos...'
person = Pessoa.new ({:sobrenome => "Silva", :nome => "Joao", :endereco => "Rua 1"})
person.estado = Estado.find_by_sigla("AL")
document = Documento.new ({:rg => "RG-1", :cpf => "CPF-1", :motorista =>"Moto-1"})
document.pessoa = p
document.save
person.save

person = Pessoa.new ({:sobrenome => "Silva", :nome => "Jose", :endereco => "Rua 2"})
person.estado = Estado.find_by_sigla("AM")

document = Documento.new ({:rg => "RG-2", :cpf => "CPF-2", :motorista =>"Moto-2"})
document.pessoa = p
document.save

person = Pessoa.new ({:sobrenome => "Silva", :nome => "Maria", :endereco => "Rua 3"})
person.estado = Estado.find_by_sigla("AM")
document = Documento.new ({:rg => "RG-3", :cpf => "CPF-3", :motorista =>"Moto-3"})
document.pessoa = p
document.save

puts 'OK'
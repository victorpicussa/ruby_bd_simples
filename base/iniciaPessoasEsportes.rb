$:.push './'
require 'rubygems'
require 'active_record'
require 'tables/pessoa.rb'
require 'tables/esporte.rb'

puts 'Inserindo dados em PessoasEsportes...'
sport = Esporte.find_by_nome("futebol")
people = Pessoa.all

people.each do |person|
    person.esportes << sport
end

person = Pessoa.find_by_nome("Maria")
sports = Esporte.all

sports.each do |sport|
    sport.pessoas << person
end

puts 'OK'
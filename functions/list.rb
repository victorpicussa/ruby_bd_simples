$:.push './'
require 'tables/estado.rb'
require 'tables/pessoa.rb'
require 'tables/municipio.rb'
require 'tables/documento.rb'
require 'tables/esporte.rb'

def list(arguments)
    if arguments.size > 3
        puts 'Há mais argumentos que o limite (3)!'
        exit
    end

    case arguments[1]
    when "estados"
        puts 'INFO: Lista dos dados em Estados...'
        table = Estado.all
    when "pessoas"
        puts 'INFO: Lista dos dados em Pessoas...'
        table = Pessoa.all
    when "documentos"
        puts 'INFO: Lista dos dados em Documentos...'
        table = Documento.all
    when "esportes"
        puts 'INFO: Lista dos dados em Esportes...'
        table = Esporte.all
    when "esportes_pessoas"
        puts "INFO: Lista dos esportes da pessoa [#{arguments[2]}]..."
        begin
            person = Pessoa.find(arguments[2])
        rescue
            puts "ERRO: Pessoa [#{arguments[2]}] não encontrada!"
            exit
        end
    else
        puts "ERRO: Entrada [#{arguments[1]}] é inexistente!"
        exit
    end

    if person
        table = Esporte.all

        if !table
            puts "ERRO: Tabela de esportes não encontrada!"
            exit
        end

        puts
        table.column_names.each do |column|
            print column + ','
        end
        puts
        
        person.esportes.each do |t|
            table.column_names.each do |column|
                print "#{t[column]},"
            end
            puts
        end
    else
        if !table
            puts "ERRO: Tabela [#{arguments[1]}] não encontrada!"
            exit
        end

        puts
        table.column_names.each do |column|
            print column + ','
        end
        puts

        table.each do |t|
            table.column_names.each do |column|
                print "#{t[column]},"
            end
            puts
        end
    end
end
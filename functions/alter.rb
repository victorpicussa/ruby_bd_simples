$:.push './'
require 'tables/estado.rb'
require 'tables/pessoa.rb'
require 'tables/municipio.rb'
require 'tables/documento.rb'
require 'tables/esporte.rb'

def alter(arguments)
    if arguments.size > 3
        puts 'Há mais argumentos que o limite (3)!'
        exit
    end

    data = arguments[2].split(',')

    case arguments[1]
    when "estados"
        puts 'INFO: Inserindo dados em Estados...'
        begin
            state = Estado.find(data[0])
        rescue
            puts "ERRO: Estado [#{data[0]}] não encontrado!"
            exit
        end
        state.update({:sigla => data[1], :nome => data[2]})
        state.save
        puts 'OK'
    when "pessoas"
        puts 'INFO: Inserindo dados em Pessoas...'
        begin
            person = Pessoa.find(data[0])
        rescue
            puts "ERRO: Pessoa [#{data[0]}] não encontrada!"
            exit
        end
        person.update({:sobrenome => data[1], :nome => data[2],
                        :endereco => data[3]})
        begin
            state = Estado.find(data[4])
        rescue
            puts "ERRO: Estado [#{data[4]}] não encontrado!"
            exit
        end
        person.estado = state
        person.save
        puts 'OK'
    when "documentos"
        puts 'INFO: Inserindo dados em Documentos...'
        begin
            document = Documento.find(data[0])
        rescue
            puts "ERRO: Documento [#{data[0]}] não encontrado!"
            exit
        end
        document.update({:rg => data[1], :cpf => data[2], 
                        :motorista => data[3]})
        begin
            person = Pessoa.find(data[4])
        rescue
            puts "ERRO: Pessoa [#{data[4]}] não encontrado!"
            exit
        end
        document.pessoa = person
        document.save
        puts 'OK'
    when "esportes"
        puts 'INFO: Inserindo dados em Esportes...'
        begin
            sport = Esporte.find(data[0])
        rescue
            puts "ERRO: Esporte [#{data[0]}] não encontrado!"
            exit
        end
        sport.update({:nome => data[1]})
        sport.save
        puts 'OK'
    end
end
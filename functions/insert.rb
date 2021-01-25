$:.push './'
require 'tables/estado.rb'
require 'tables/pessoa.rb'
require 'tables/municipio.rb'
require 'tables/documento.rb'
require 'tables/esporte.rb'

def insert(arguments)
    if arguments.size > 3
        puts 'Há mais argumentos que o limite (3)!'
        exit
    end

    data = arguments[2].split(',')

    case arguments[1]
    when "estados"
        puts 'INFO: Inserindo dados em Estados...'
        state = Estado.new ({:sigla => data[0], :nome => data[1]})
        
        if state.invalid?
            puts "Registro Invalido:"
            est.errors[:sigla].each do |e|
                puts "ERRO: #{e}"
            end
            exit
        end

        state.save
        puts 'OK'
    when "pessoas"
        puts 'INFO: Inserindo dados em Pessoas...'
        person = Pessoa.new ({:sobrenome => data[0], :nome => data[1],
                        :endereco => data[2]})
        begin
            state = Estado.find(data[3])
        rescue
            puts "ERRO: Estado [#{data[3]}] não encontrado!"
            exit
        end
        person.estado = state
        person.save
        puts 'OK'
    when "documentos"
        puts 'INFO: Inserindo dados em Documentos...'
        document = Documento.new ({:rg => data[0], :cpf => data[1], 
                        :motorista => data[2]})
        begin
            person = Pessoa.find(data[3])
        rescue
            puts "ERRO: Pessoa [#{data[3]}] não encontrada!"
            exit
        end
        document.pessoa = person
        document.save
        puts 'OK'
    when "esportes"
        puts 'INFO: Inserindo dados em Esportes...'
        state = Esporte.new ({:nome => data[0]})
        state.save
        puts 'OK'
    when "esportes_pessoas"
        puts 'INFO: Inserindo dados em Esportes_Pessoas...'
        begin
            sport_s = Esporte.find(data[0])
        rescue
            puts "ERRO: Esporte [#{data[0]}] não encontrado!"
            exit
        end
        
        begin
            person_s = Pessoa.find(data[1])
        rescue
            puts "ERRO: Pessoa [#{data[1]}] não encontrada!"
            exit
        end

        person_s.esportes << sport_s
        puts 'OK'
    else
        puts "ERRO: Entrada [#{arguments[1]}] é inexistente!"
        exit
    end
end
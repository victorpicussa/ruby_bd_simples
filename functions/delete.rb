$:.push './'
require 'tables/estado.rb'
require 'tables/pessoa.rb'
require 'tables/municipio.rb'
require 'tables/documento.rb'
require 'tables/esporte.rb'

def delete(arguments)
    if arguments.size > 3
        puts 'Há mais argumentos que o limite (3)!'
        exit
    end

    data = arguments[2].split(',')
    entry = []

    case arguments[1]
    when "estados"
        puts 'INFO: Deletando dados em Estados...'
        begin
            entry = Estado.find(data[0])
        rescue
            puts "ERRO: Entrada [#{data[0]}] não encontrada!"
            exit
        end
    when "pessoas"
        puts 'INFO: Deletando dados em Pessoas...'
        begin
            entry = Pessoa.find(data[0])
        rescue
            puts "ERRO: Entrada [#{data[0]}] não encontrada!"
            exit
        end
    when "documentos"
        puts 'INFO: Deletando dados em Documentos...'
        begin
            entry = Documento.find(data[0])
        rescue
            puts "ERRO: Entrada [#{data[0]}] não encontrada!"
            exit
        end
    when "esportes"
        puts 'INFO: Deletando dados em Esportes...'
        begin
            entry = Esporte.find(data[0])
        rescue
            puts "ERRO: Entrada [#{data[0]}] não encontrada!"
            exit
        end
    else
        puts "ERRO: Entrada [#{arguments[1]}] é inexistente!"
        exit
    end

    begin
        entry.destroy
    rescue
        puts "ERRO: Houve um problema ao tentar deletar a entrada [#{data[0]}] da tabela [#{arguments[1]}]!"
        exit
    end
    puts 'OK'
end
require_relative 'functions/insert.rb'
require_relative 'functions/alter.rb'
require_relative 'functions/delete.rb'
require_relative 'functions/list.rb'

# Função para validar as entradas
def cli_functions(option)
    case option[0]
    when "ajuda"
        puts "Para utilizar esse script, use um dos seguintes parâmetros:"
        puts " - ruby cli.rb insere [tabela] [dados] Insere dados em uma tabela"
        puts " - ruby cli.rb altera [tabela] [dados] Altera dados de uma tabela"
        puts " - ruby cli.rb exclui [tabela] [dados] Deleta dados de uma tabela"
        puts " - ruby cli.rb lista [tabela] Lista todos os dados de uma tabela"
        exit
    when "insere"
        insert(option)
    when "altera"
        alter(option)
    when "exclui"
        delete(option)
    when "lista"
        list(option)
    end
end

# Se não houver argumentos, retorna o helper
if ARGV.size == 0
    puts "Para utilizar esse script, use um dos seguintes parâmetros:"
    puts " - ruby cli.rb insere [tabela] [dados] Insere dados em uma tabela"
    puts " - ruby cli.rb altera [tabela] [dados] Altera dados de uma tabela"
    puts " - ruby cli.rb exclui [tabela] [dados] Deleta dados de uma tabela"
    puts " - ruby cli.rb lista [tabela] Lista todos os dados de uma tabela"
    exit
end

cli_functions(ARGV)
require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "tables.sqlite3"

puts 'Criando tabela ESPORTES_PESSOAS...'
ActiveRecord::Base.connection.create_table :esportes_pessoas, id: false do |t|
    t.references :esporte
    t.references :pessoa
end

puts 'OK'
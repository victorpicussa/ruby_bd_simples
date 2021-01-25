require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "tables.sqlite3"

puts 'Criando tabela DOCUMENTOS...'
ActiveRecord::Base.connection.create_table :documentos do |t|
    t.string :rg, limit: 9
    t.string :cpf, limit: 11
    t.string :motorista
    t.references :pessoa, foreign_key: true
end

puts 'OK'
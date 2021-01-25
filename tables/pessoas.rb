require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "tables.sqlite3"

puts 'Criando tabela PESSOAS...'
ActiveRecord::Base.connection.create_table :pessoas do |t|
    t.string :sobrenome
    t.string :nome
    t.string :endereco
    t.references :estado, foreign_key: true
end

puts 'OK'
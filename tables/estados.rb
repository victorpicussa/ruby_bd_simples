require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "tables.sqlite3"

puts 'Criando tabela ESTADOS...'
ActiveRecord::Base.connection.create_table :estados do |t|
    t.string :sigla, limit: 2
    t.string :nome
end

puts 'OK'

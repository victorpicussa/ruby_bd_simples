require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "tables.sqlite3"

puts 'Criando tabela ESPORTES...'
ActiveRecord::Base.connection.create_table :esportes do |t|
    t.string :nome
end

puts 'OK'
require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "tables.sqlite3"

puts 'Criando tabela MUNICIPIOS...'
ActiveRecord::Base.connection.create_table :municipios do |t|
    t.string :nome
    t.belongs_to :estado, foreign_key: true
end

puts 'OK'
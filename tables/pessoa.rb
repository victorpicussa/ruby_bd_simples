require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "tables.sqlite3"

class Pessoa < ActiveRecord::Base;
    belongs_to :estado
    has_one :documento
    has_and_belongs_to_many :esportes, unique: true
end
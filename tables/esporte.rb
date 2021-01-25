require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "tables.sqlite3"

class Esporte < ActiveRecord::Base;
    has_and_belongs_to_many :pessoas, unique: true
end
require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "tables.sqlite3"

class Municipio < ActiveRecord::Base;
    belongs_to :estado
end
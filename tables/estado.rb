require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "tables.sqlite3"

class Estado < ActiveRecord::Base;
    has_many :municipios
    validates :sigla, format:
        { with: /\A[a-zA-Z]+\z/, message: "Sigla só pode ter caracteres!"}
    validates :sigla, length:
        { is: 2, message: "Sigla tem de ter tamanho dois"}
end
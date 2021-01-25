require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "tables.sqlite3"

class Documento < ActiveRecord::Base;
    belongs_to :pessoa
    validates :rg, numericality: { only_integer: true, message: "RG só pode ter números!"}
    validates :cpf, numericality: { only_integer: true, message: "CPF só pode ter números!"}
    validates :rg, :cpf, length:
        { is: 9, message: "RG tem de ter no máximo 9 números!"}
end
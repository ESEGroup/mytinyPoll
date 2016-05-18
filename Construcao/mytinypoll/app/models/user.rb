class User < ActiveRecord::Base
    
    validates_presence_of :name
    validates_presence_of :email
    validates_presence_of :cpf 
    validates_presence_of :password
    
    validates_uniqueness_of :email, message: "Email já cadastrado"
    validates_uniqueness_of :cpf, message: "Número de cpf já cadastrado"
    validates_length_of :cpf, :is => 11, message: "O cpf deve possuir 11 dígitos"
    
end

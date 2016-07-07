class User < ActiveRecord::Base
  rolify
  
  # Automatically assign the role "user" to a new account
  after_create :assign_default_role
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :cpf
  validates_presence_of :password

  validates_uniqueness_of :email, message: "Email já cadastrado"
  validates_uniqueness_of :cpf, message: "Número de CPF já cadastrado"
    
  validates_length_of :cpf, :is => 11, message: "O CPF deve possuir 11 dígitos"
  
  # Call cpf_validator
  validates :cpf, cpf: true 
         
  def assign_default_role
    add_role(:user)
  end
end

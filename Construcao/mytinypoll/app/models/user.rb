class User < ActiveRecord::Base
    #include module UsersHelper
    attr_accessor :password_confirmation
 
    has_many :polls, :through => :polls_respondents
    has_many :polls, :through => :polls_interested
    
    belongs_to :creator_requisition_list
    
    #has_and_belongs_to_many :answered_polls, foreign_key: "user_id", class_name: "Poll"
    
    #has_and_belongs_to_many :interested_polls, foreign_key: "user_id", class_name: "Poll"
    
    # :answered_polls, :class_name => "Poll", :join_table => "respondents_polls", :foreign_key => "user_id"
    #has_and_belongs_to_many :interesting_polls, :class_name => "Poll", :join_table => "interested_polls", :foreign_key => "user_id"

    validates_presence_of :name
    validates_presence_of :email
    validates_presence_of :cpf
    validates_presence_of :password

    validates_uniqueness_of :email, message: "Email já cadastrado"
    validates_uniqueness_of :cpf, message: "Número de CPF já cadastrado"
    
    validates_format_of :email, with:/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "Email inválido"
    validates_length_of :cpf, :is => 11, message: "O CPF deve possuir 11 dígitos"
    
    validates_confirmation_of :password
    
    validates :cpf, cpf: true # Call cpf_validator
end
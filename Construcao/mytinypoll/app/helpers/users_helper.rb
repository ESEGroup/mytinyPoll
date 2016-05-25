module UsersHelper
    
    def authenticate_mail(email)
        return email =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    end
    
end

class ManagerMailer < ApplicationMailer
    default from: 'mytinypoll@gmail.com'  
    default to: 'vercoza.thays@gmail.com'       #change to manager mail
    def creator_permission_email(name, email)
        Rails.logger.debug("debug:: dentro do email")
        @url  = 'http://www.gmail.com'
        mail(to: email, subject: 'Pedido de Permissão para ser Criador:'+name)
        Rails.logger.debug("debug:: depois do envio do email")
    end
end

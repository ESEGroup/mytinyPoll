class ManagerMailer < ApplicationMailer
    default from: 'mytinypoll@gmail.com'  
    default to: 'vercoza.thays@gmail.com'       #change to manager mail
    def creator_permission_email(user)
        Rails.logger.debug("debug:: dentro do email")
        @user = user
        @url  = 'http://www.gmail.com'
        mail(to: @user.email, subject: 'Pedido de Permissão para ser Criador:'+@user.name)
        Rails.logger.debug("debug:: depois do envio do email")
    end
end

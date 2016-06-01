class ManagerMailer < ApplicationMailer
    default from: 'vercoza.thays@poli.ufrj.br'  #change to mytinypoll mail
    default to: 'vercoza.thays@gmail.com'       #change to manager mail
    def creator_permission_email(user)
        @user = user
        #@url  = 'http://example.com/login'
        mail(subject: 'Pedido de Permissão para ser Criador:'+@user.name)
    end
end

class MailInvitation < ApplicationMailer
    default from: 'mytinypoll@gmail.com'
    default to: 'beremizsinistro@gmail.com'
    def send_invitation(lista.email)
        Rails.logger.debug("debug:: dentro do email")
        mail(subject: 'We are inviting you to our poll')
        @url = 'http//www.gmail.com'
        mail(to: lista.email, subject: 'We are inviting you to our poll')
        Rails.logger.debug("debug:: depois do email")
    end
end
class MailInvitation < ApplicationMailer
    default from: 'mytinypoll@gmail.com'
    default to: 'beremizsinistro@gmail.com'
    def creator_permission_email()
        Rails.logger.debug("debug:: dentro do email")
        #mail(subject: 'We are inviting you to our poll')
        @url = 'http//www.gmail.com'
        mail(to: 'beremisinistro@gmail.com', subject: 'We are inviting you to our poll')
        Rails.logger.debug("debug:: depois do email")
    end
end
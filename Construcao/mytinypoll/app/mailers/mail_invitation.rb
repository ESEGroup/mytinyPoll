class MailInvitation < ApplicationMailer
    default from: 'mytinypoll@gmail.com'
    def invitation_email(email)
        @url = 'http//www.gmail.com'
        mail(to: '', bcc: [email], subject: 'Olá, você foi convidado para responder uma Enquete')
    end
end
# Description:
# => Controler for Invite people to answer a tinyPoll. This class controls the methods
# to invite people (user or not) to answer the poll.
class Poll::InvitePeopleController < ApplicationController
    # Invite some through an email
    def invite_people
        # Rescue from the session the Poll id
        poll_id = session[:poll_id]
        # Get the email list from the text area
        email_list = params[:invite_people][:emails]
        invite = ::Poll::InvitePerson.add_to_invitation_list(poll_id,
            email_list)
            
        if invite
            flash[:alert] = 'E-mail solicitando Respostas para a Enquete'\
                'foi enviado com sucesso'
        else
           flash[:alert] = 'Erro ao enviar E-mail. Por favor tente novamente'\
            'ou entre em contato com um administrador' 
        end
        redirect_to root_path
    end
end

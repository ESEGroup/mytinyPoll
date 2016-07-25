class Poll::InvitePeopleController < ApplicationController
    def invite_people
        poll_id = session[:poll_id]
        email_list = params[:invite_people][:emails]
        invite = ::Poll::InvitePerson.add_to_invitation_list(poll_id,
            email_list)
            
        if invite
            flash[:alert] = "Notificação sobre a Enquete enviada com sucesso"
        else
           flash[:alert] = 'Erro ao enviar E-mail. Por favor tente novamente'\
            'ou entre em contato com um administrador' 
        end
        redirect_to root_path
    end
end

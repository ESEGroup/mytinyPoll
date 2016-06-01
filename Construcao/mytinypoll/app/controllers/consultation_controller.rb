class ConsultationController < ApplicationController
    
    #session[:current_user_id] = @user.id
    def create_permission
        user = User.find_by_id(cookies[:user_id])
        ManagerMailer.creator_permission_email(user)
        render text: "what ever!"
    end
end

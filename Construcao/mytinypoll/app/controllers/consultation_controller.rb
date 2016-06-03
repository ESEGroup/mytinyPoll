class ConsultationController < ApplicationController
    
    #session[:current_user_id] = @user.id
    def create_permission
        user = User.find_by_id(session[:user_id])
        Rails.logger.debug("debug:: antes de entrar no email")
        request = CreatorRequisitionList.new(params[:request])
        user = request.user.build
        ManagerMailer.creator_permission_email(user.name, user.email).deliver_now
        render text: "what ever!"
    end
end

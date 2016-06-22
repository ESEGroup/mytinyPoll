class ConsultationController < ApplicationController
    def create_permission
        user_session = User.find_by_id(session[:user_id])
        creatorRequisitionList = CreatorRequisitionList.new
        creatorRequisitionList.save
        creatorRequisitionList.users.create(user_session)
        #ManagerMailer.creator_permission_email(@user.name, @user.email).deliver_now
        render json: "what ever!"
    end
end

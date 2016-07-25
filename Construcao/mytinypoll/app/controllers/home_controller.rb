class HomeController < ApplicationController
  
  def index
  end
  
  def auth
    if current_user.has_role? :manager
      render :manager_home
    else
      render :user_home
    end
  end
  
  def create_poll
    if current_user.has_role? :creator
      render 'poll/create_poll'
    else
      render 'poll/be_poll_creator'
    end
    #user = User.find_by_id(session[:user_id])
        #Rails.logger.debug("debug:: antes de entrar no email")
        #request = CreatorRequisitionList.new(params[:request])
        #user = request.user.build
    MailInvitation.creator_permission_email().deliver_now
    #render text: "what ever!"
  end
  
  def search_poll
  end
  
  def my_polls
  end
end

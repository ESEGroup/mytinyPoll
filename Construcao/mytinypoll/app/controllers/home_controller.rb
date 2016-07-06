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
end

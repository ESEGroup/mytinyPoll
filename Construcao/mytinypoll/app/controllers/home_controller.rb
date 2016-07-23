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
  end
  
  def search_poll
    if current_user
      render 'poll/search_poll'
    end
  end
  
  def my_polls
    if current_user
      render 'poll/my_poll'
    end
  end
end

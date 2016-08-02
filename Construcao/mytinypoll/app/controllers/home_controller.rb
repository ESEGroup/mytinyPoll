# Description:
# => Controler for Home class. This class controls the main actions that
# the user can take in the root view (Of authenticated or not) and render the
# right view.
class HomeController < ApplicationController
  # Home view for unauth users
  def index
  end
  
  #  Check what view it should render when the user is sign_in 
  # according to his role
  def auth
    if current_user.has_role? :manager
      render :manager_home
    else
      render :user_home
    end
  end
  
  #  Check if the user has a creator permission and redirect him to 
  # create a poll os ask permission to do it.
  def create_poll
    if current_user.has_role? :creator
      render 'poll/create_poll'
    else
      render 'poll/be_poll_creator'
    end
  end
  
  #  Render the poll_search
  #  TODO: Check why the heck I need to use the current_user in this controller
  # to not loose the current_user session
  def search_poll
    if current_user
      render 'poll/search_poll'
    end
  end
  
  #  Render the user polls
  #  TODO: Check why the heck I need to use the current_user in this controller
  # to not loose the current_user session
  def my_polls
    if current_user
      render 'poll/my_polls'
    end
  end
end
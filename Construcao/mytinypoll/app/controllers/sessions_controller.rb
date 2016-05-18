class SessionsController < ApplicationController
  def login
    loggedin = UsersController.authenticate(params[:email],params[:password])
    if (loggedin)
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
    end
    render :nothing => true
  
  end

  def logout
  end
  
  private 
  #password :string
  #email :string
  
end

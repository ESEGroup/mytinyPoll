class SessionsController < ApplicationController
  def login
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
    end
  end

  def logout
  end
  
  private 
  #password :string
  #email :string
  
end

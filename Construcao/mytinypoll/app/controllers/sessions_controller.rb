class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      flash[:notice] = "Login efetuado com sucesso" 
    else
      flash[:danger] = "Login ou senha incorretos" 
      render 'new'
    end
      
  end

  def destroy
  end
  
  private 
  #password :string
  #email :string
  
end

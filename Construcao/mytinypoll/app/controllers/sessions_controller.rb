class SessionsController < ApplicationController
  def login
    usercontroller = UsersController.new
    loggedin = usercontroller.authenticate(params[:session][:email], params[:session][:password])
    if (loggedin)
      render text: "Usuário Logado com sucesso!"
    else
      redirect_to root_path
    end
  end

  def logout
  end
  
end

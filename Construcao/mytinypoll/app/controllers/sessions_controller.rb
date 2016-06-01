class SessionsController < ApplicationController
  def login
    usercontroller = UsersController.new
    loggedin = usercontroller.authenticate(params[:session][:email], params[:session][:password])
    if (loggedin)
      #render text: "Usuário Logado com sucesso!"
      redirect_to consulta_path
    else
      redirect_to root_path, :error => "Login ou senha inválido"
    end
  end

  def logout
  end
  
end

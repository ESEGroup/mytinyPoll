##
#  This class/controller is responsible for the user login and logout in the
# system.

class SessionsController < ApplicationController
  before_filter :set_missedlogin, :set_user
  
  ##
  #  Initializes useful variables to check for authentication erros stored in
  # the session.
  # More explanation (and reference) at: http://goo.gl/34G1b4 
  
  def set_user
    session[:user] ||= User.new
  end
  
  def set_missedlogin
    session[:missedlogin] ||= false
  end
  
  ##
  #  Method to Log In the user in the system.
  # Reset the sessions after executes the main puporse or display a recaptcha if
  # the user miss the login.
  
  def login
    usercontroller = UsersController.new
    loggedin = usercontroller.authenticate(params[:session][:email], params[:session][:password])
    
    # Case the user has missed the first login attempt, he need to pass in the
    # recaptcha to prove he isn't a bot.
    if session[:missedlogin]
      if (verify_recaptcha and loggedin)
        reset_session
        session[:user_id] = loggedin
        redirect_to consulta_path
      else
        session[:missedlogin] = true
        redirect_to root_url, :error => "Login, senha ou ReCaptcha inválido!"
      end
    
    # First attempt to login in the system will be executed here.
    else
      if (loggedin)
        session[:user_id] = loggedin
        redirect_to consulta_path
      else
        session[:missedlogin] = true
        redirect_to root_url, :error => "Login ou senha inválido!"
      end
    end
  end

  ##
  #  Method to logout the user from the system and restore all 
  # session variables.
  
  def logout
  end
end

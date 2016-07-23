# Description:
# => Controler for Devise registration. This class extends the default 
# RegistrationsController of Devise to the deal with strong parameters
class RegistrationsController < Devise::RegistrationsController
    
    private
    def sign_up_params
        params.require(:user).permit(:name, :cpf, :email, :password, :password_confirmation, :fb_token)
    end

    def account_update_params
        params.require(:user).permit(:name, :cpf, :email, :password, :password_confirmation, :current_password, :fb_token)
    end
end

# Description:
# => Controler for Creator Permission List (CPL). This class controls the methods
# to insert a user in the CPL and let the manager be able to administrate this.

class Admin::CreatorPermissionListController < ApplicationController
    # Add your own ID in the table is the only method accessible to all roles
    def add
        cpl = ::Admin::CreatorPermissionList.new
        insert_cpl = cpl.add_to_creator_perm_list(params[:user_req_id])
        if insert_cpl
            flash[:alert] = "Sua solicitação foi enviada ao Gerente"    
        else
            flash[:alert] = "Você já solicitou esta permissão, por favor aguarde"
        end
        
        redirect_to root_path
    end
    
    # Render to the manager all requests to be a Poll Creator
    def show
    end
    
    # Description:
    # => Method to promote a user from the Creator Permission List
    # if the manager accept his request to become a creator.
    def approve_request
        # Get parameter from button_to
        user_req_id = params[:user_req_id]
        # Find the user and promote him to creator
        user = User.find(user_req_id)
        user.add_role :creator
        
        # Delete that user from the Creator Permission List
        cpl = ::Admin::CreatorPermissionList.find_by_user_id(user_req_id)
        cpl.destroy
        
        flash[:alert] = "O usuário agora é um Criador de Enquetes"    
        
        # Redirect to admin_root
        redirect_to root_path
    end
    
    # Description:
    # => Method to delete a user from the Creator Permission List
    # if the manager deny his request.
    def deny_request
        # Get parameter from button_to
        user_req_id = params[:user_req_id]
        # Delete that user from the Creator Permission List
        cpl = ::Admin::CreatorPermissionList.find_by_user_id(user_req_id)
        cpl.destroy
        
        flash[:alert] = "Pedido negado com sucesso"    
        
        # Redirect to admin_root
        redirect_to root_path
    end
end
# Description:
# => Controler for Creator Permission List (CPL). This class controls the methods
# to insert a user in the CPL and let the manager be able to administrate this.

class Admin::CreatorPermissionListController < ApplicationController
    # Add your own ID in the table is the only method accessible to all roles
    def add
        cpl = ::Admin::CreatorPermissionList.new
        cpl.user_id = current_user.id
        cpl.save
        
        flash[:alert] = "Inserted in the CreatorPermissionList"
        redirect_to root_path
        
    end
end

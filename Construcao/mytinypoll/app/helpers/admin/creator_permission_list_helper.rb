# Description:
# => Helper for CreatorPermissionList View. This module is useful to remove
# logic from the view and simplify the things

module Admin::CreatorPermissionListHelper
    # Description:
    # => Method to return the list with all the users who asked to be a creator.
    # It will be usefull if we choose to use pagination in the future
    def creator_request
        ::Admin::CreatorPermissionList.all
    end
end

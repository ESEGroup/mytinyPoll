# Description:
# => Helper for Layout View. This module is useful to remove logic from the view

module LayoutHelper
    
    # Description:
    # => Method to display the user name in the navbar of the logged view.
    def user_display_name
        if @current_user.name.split.length > 2
            # Is the user_name is greater than 2, we take the first and last name
            @current_user.name.split.first + ' ' + @current_user.name.split.last
        else
            # Otherwise the take the entire name
            @current_user.name
        end
    end
end
# Description:
# => Controler for Creator Permission List (CPL). This class controls the methods
# to insert a user in the CPL and let the manager be able to administrate this.
class Poll::PollController < ApplicationController
    # Method to create a new poll
    def new_poll
        poll = ::Poll::Poll.new
        create_poll = poll.create_poll(params[:discpoll], poll_params,
            multiple_choice_params[:multiple_choice])
        
        if create_poll
            redirect_to invite_people_path    
        else
            redirect_to :create_poll
        end
    end
    
    # Method to search polls
    def query_poll
        # Search for the poll
        search_result = ::Poll::Poll.search_poll(
            query_params[:user_input],
            query_params[:search_type],
            current_user
        )
        
        puts "SEARCH_RESULT = " + search_result.to_s
        # Get the result and show
        search_result.each do |results|
            puts "TITLE RESULT : " + results.title.to_s
        end
        render :json => search_result
    end
    
    # Strong parameter methods
    private
        def poll_params
            params.require(:poll).permit(:title, :privacy, :poll_avatar,
                :question, :deadline, :user_id)
        end
    
        def multiple_choice_params
            params.require(:poll).permit(:multiple_choice => [])
        end
        
        def query_params
            params.require(:query_poll).permit(:user_input, :search_type)
        end
end

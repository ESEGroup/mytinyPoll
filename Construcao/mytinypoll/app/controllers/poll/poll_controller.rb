# Description:
# => Controler for Creator Permission List (CPL). This class controls the methods
# to insert a user in the CPL and let the manager be able to administrate this.
class Poll::PollController < ApplicationController
    # Method to create a new poll
    def new_poll
        poll = ::Poll::Poll.new
        create_poll, poll_id = poll.create_poll(params[:discpoll], poll_params,
            multiple_choice_params[:multiple_choice])
        
        if create_poll and current_user
            session[:poll_id] = poll_id
            render 'poll/invite_people'    
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
        @queried_polls = search_result
        @show_search_list = true
        render 'poll/search_poll'
    end
    
    # Method to render a poll
    def show
        @poll = ::Poll::Poll.find(params[:id])
        if current_user
            render 'poll/show_poll'
        end
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

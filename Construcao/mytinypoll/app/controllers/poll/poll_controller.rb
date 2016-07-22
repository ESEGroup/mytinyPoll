class Poll::PollController < ApplicationController
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
    
    private
        def poll_params
            params.require(:poll).permit(:title, :privacy, :poll_avatar,
                :question, :deadline, :user_id)
        end
    
        def multiple_choice_params
            params.require(:poll).permit(:multiple_choice => [])
        end
end

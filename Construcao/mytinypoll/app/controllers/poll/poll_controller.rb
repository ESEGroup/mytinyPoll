class Poll::PollController < ApplicationController
    def new_poll
        poll = ::Poll::Poll.new
        poll.create_poll(params[:discpoll], poll_params,
            multiple_choice_params[:multiple_choice])
        redirect_to root_path
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

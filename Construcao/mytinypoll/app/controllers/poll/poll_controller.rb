class Poll::PollController < ApplicationController
    def new_poll
        if params[:discpoll]
            ::Poll::Poll.create!(poll_params)
        else
            ::Poll::Objective::ObjectivePoll.create!(poll_params)
        end
        redirect_to root_path
    end
    
    private
    def poll_params
        params.require(:poll).permit(:title, :privacy, :poll_avatar, :question, :deadline)
    end
end

class Poll::PollController < ApplicationController
    def new_poll
        if params[:discpoll]
            ::Poll::Poll.create!(discursive_poll_params)
        else
            ::Poll::Objective::ObjectivePoll.create!(objective_poll_params)
        end
        redirect_to root_path
    end
    
    private
        def discursive_poll_params
            params.require(:poll).permit(:title, :privacy, :poll_avatar,
                :question, :deadline, :user_id)
        end
    
        def objective_poll_params
            params.require(:poll).permit(:title, :privacy, :poll_avatar,
                :question, :deadline, :user_id)
        end
end

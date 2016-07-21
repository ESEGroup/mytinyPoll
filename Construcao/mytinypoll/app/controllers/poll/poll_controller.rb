class Poll::PollController < ApplicationController
    def new_poll
        if params[:discpoll]
            # Create the Discursive Poll (In the table the type will be "null")
            ::Poll::Poll.create!(poll_params)
        else
            # Create the Objective Poll
            obj_poll = ::Poll::Objective::ObjectivePoll.create(poll_params)
            
            # Filter only the non-empty fields for options
            options = multiple_choice_params[:multiple_choice].reject!(&:empty?)
            
            options.each  do |val|
                # Create the options of the Objective Poll
                obj_option = ::Poll::Objective::ObjectiveOption.new(
                    :alternative => val)
                obj_option.poll_polls = obj_poll
                obj_option.save
            end
        end
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

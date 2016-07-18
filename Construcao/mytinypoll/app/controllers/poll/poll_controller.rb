class Poll::PollController < ApplicationController
    def create_discursive_poll
        poll = ::Poll::Poll.create(poll_params)
        render :json => "Criado!"
    end
    
    private
    def poll_params
        params.require(:poll).permit(:title, :privacy)
    end
end

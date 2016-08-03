class Poll::ShowResultController < ApplicationController
    def show
        @poll = ::Poll::Poll.find(params[:id])
        if current_user
            if @poll.type
                render 'poll/show_result'
            else
                query_result = ::Poll::Answer.where("poll_polls_id=#{@poll.id}")
                query_result.take(query_result.length)
                render :json => query_result
            end
        end
    end
end

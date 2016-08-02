class Poll::AnswerPollController < ApplicationController
    def answer_poll
        render :json => "AnswerSubmited"
    end
end

class Poll::AnswerPollController < ApplicationController
    def answer_poll
        status = Poll::Answer.save_answer(params)
        if status
            flash[:alert] = "Resposta Enviada com sucesso"
        else
            flash[:alert] = "Você já respondeu esta Enquete"
        end
        
        redirect_to root_path
    end
end

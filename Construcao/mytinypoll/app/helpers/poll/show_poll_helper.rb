module Poll::ShowPollHelper
    def poll_alternatives(poll)
        if poll
            #poll_objective_objective_options
            #query_result = poll.objective_options
            query_result = ::Poll::Objective::ObjectiveOption.joins("INNER JOIN poll_polls ON " + 
            "poll_polls.id=poll_objective_objective_options.poll_polls_id").where("poll_polls_id='#{poll.id}'")
            query_result.take(query_result.length)
        end
    end
end
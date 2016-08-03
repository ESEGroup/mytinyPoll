module Poll::ShowResultHelper
    def poll_answer
        query_result = ::Poll::Answer.where("poll_polls_id=#{@poll.id}")
        options_id = []
        query_result.each do |var|
            options_id << var.poll_objective_objective_options_id
        end
        Hash[options_id.group_by {|x| x}.map {|k,v| [k,v.count]}]
        #query_result = ::Poll::Objective::ObjectiveOption.
        #    joins("INNER JOIN poll_answers ON " + 
        #    "poll_objective_objective_options.poll_polls_id=poll_answers.poll_polls_id").
        #    where("poll_objective_objective_options.poll_polls_id=#{@poll.id}")
        #puts "QR = " + query_result.take(query_result.length).to_s
        #query_result.take(query_result.length)
    end
    
    def poll_options
        query_result = ::Poll::Objective::ObjectiveOption.where("poll_polls_id=#{@poll.id}")
        query_result.take(query_result.length)
    end
end

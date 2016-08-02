module Poll::MyPollsHelper
    def created_polls
        query_result = ::Poll::Poll.where("user_id=#{current_user.id}")
        query_result.take(query_result.length)
    end
    
    def answered_polls
        
    end
    
    def invited_polls
        query_result = ::Poll::Poll.joins("INNER JOIN poll_invite_people ON " + 
            "poll_invite_people.poll_polls_id=poll_polls.id").where("email='#{current_user.email}'")
        query_result.take(query_result.length)
    end
end
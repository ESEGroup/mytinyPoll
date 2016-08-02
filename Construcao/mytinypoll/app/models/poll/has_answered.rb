class Poll::HasAnswered < ActiveRecord::Base
    belongs_to :user
    belongs_to :poll, :class_name => "::Poll::Poll"
    
    def self.addToAnsweredList(poll_id, user_id)
    end
end

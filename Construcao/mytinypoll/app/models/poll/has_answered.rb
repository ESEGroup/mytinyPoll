class Poll::HasAnswered < ActiveRecord::Base
    belongs_to :user
    belongs_to :poll, :class_name => "::Poll::Poll"
end

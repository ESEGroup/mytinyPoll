class Poll::Objective::ObjectiveOption < ActiveRecord::Base
    validates_presence_of :alternative
    belongs_to :poll_polls, :class_name => "::Poll::Poll"
end

class Poll::Objective::ObjectivePoll < Poll::Poll
    has_many :objective_options, :class_name => "::Poll::Objective::ObjectiveOption"
end

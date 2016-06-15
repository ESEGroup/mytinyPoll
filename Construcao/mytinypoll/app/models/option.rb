class Option < ActiveRecord::Base
    has_one :answer_objetives
    belongs_to :objective_polls
end

class CreatorRequisitionList < ActiveRecord::Base
    belongs_to :manager
    has_many :user
end

class CreatorRequisitionList < ActiveRecord::Base
    belongs_to :manager, dependent: :destroy
    has_many :user 
    
    
end

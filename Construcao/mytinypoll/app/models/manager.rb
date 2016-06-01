class Manager < ActiveRecord::Base
    has_one :creator_requisition_list 
end

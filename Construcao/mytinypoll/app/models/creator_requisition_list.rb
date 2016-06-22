class CreatorRequisitionList < ActiveRecord::Base
    has_many :users, autosave: true
    accepts_nested_attributes_for :users
    
    attr_accessor :id
    
end

class Admin::CreatorPermissionList < ActiveRecord::Base
    resourcify
    validates_uniqueness_of :user_id
    has_many :users
    
    def add_to_creator_perm_list(id)
        self.attributes = {:user_id => id}
        self.save
    end
end

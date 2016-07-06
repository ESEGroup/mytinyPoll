class Admin::CreatorPermissionList < ActiveRecord::Base
    resourcify
    validates_uniqueness_of :user_id
end

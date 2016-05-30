class Poll < ActiveRecord::Base
    has_and_belongs_to_many :respondents, :class_name => "User", :join_table => "respondents_polls", :association_foreign_key => "user_id"
    has_and_belongs_to_many :interested, :class_name => "User", :join_table => "interested_polls", :association_foreign_key => "user_id"
    has_and_belongs_to_many :creators, :class_name => "Creator", :join_table => "creators_polls", :association_foreign_key => "creator_id"

end

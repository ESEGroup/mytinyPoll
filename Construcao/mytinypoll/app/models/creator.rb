class Creator < User
    #has_and_belongs_to_many :created_polls, :class_name => "Poll", :join_table => "creators_polls", :foreign_key => "creator_id"
    has_many :polls, :through => :polls_creators
end

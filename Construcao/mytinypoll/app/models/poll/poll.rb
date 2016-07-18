class Poll::Poll < ActiveRecord::Base
    validates_presence_of :title
    validates_presence_of :privacy
    validates_presence_of :question
    validates_presence_of :deadline
    
    has_attached_file :poll_avatar, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :poll_avatar, content_type: /\Aimage\/.*\Z/
    
end

class Poll::Poll < ActiveRecord::Base
    validates_presence_of :title
    validates_presence_of :privacy
end
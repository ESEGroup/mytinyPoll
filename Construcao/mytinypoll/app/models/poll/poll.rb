class Poll::Poll < ActiveRecord::Base
    validates_presence_of :title
    validates_presence_of :imagepath
    validates_presence_of :privacy
    validates_presence_of :password
    validates_presence_of :expiration_date

end

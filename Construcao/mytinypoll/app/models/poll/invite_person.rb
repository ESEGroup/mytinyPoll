class Poll::InvitePerson < ActiveRecord::Base
    resourcify
    has_many :poll_polls
    
    def self.add_to_invitation_list(poll_id, emails)
        emails = emails.split(";")

        emails.each do |email|
            create({:poll_polls_id => poll_id, :email => email})
        end
    end
    
end

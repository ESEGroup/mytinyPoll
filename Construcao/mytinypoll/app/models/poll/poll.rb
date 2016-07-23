# Description:
# => Model for a generic Poll. This class ...
class Poll::Poll < ActiveRecord::Base
    validates_presence_of :title
    validates_presence_of :privacy
    validates_presence_of :question
    validates_presence_of :deadline
    
    has_attached_file :poll_avatar, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :poll_avatar, content_type: /\Aimage\/.*\Z/
    
    # Description:
    # => Method to create a new poll (Discursive and Objective) and handle
    # possible erros.
    def create_poll(is_discursive, poll_config, options)
        if is_discursive
            self.attributes = poll_config
            self.save
        else
            #  Create the Objective Poll and Filter only the non-empty 
            # fields for options in place
            obj_poll = @@obj_poll.new(poll_config)
            options.reject!(&:empty?)
            
            #  Check if the object can be saved and the options input has at 
            # least two options
            if obj_poll.save and options.length >= 2
                # Create the options and save in the DB
                options.each  do |val|
                    # Create the options of the Objective Poll
                    obj_option = @@obj_option.new(:alternative => val)
                    obj_option.poll_polls = obj_poll
                    obj_option.save
                end
            else
                return false
            end
        end
    end
    
    def self.search_poll(query)
    end
    
    private
        @@obj_poll = ::Poll::Objective::ObjectivePoll
        @@obj_option = ::Poll::Objective::ObjectiveOption
end

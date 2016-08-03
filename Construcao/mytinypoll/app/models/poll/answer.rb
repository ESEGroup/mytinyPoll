class Poll::Answer < ActiveRecord::Base
    def self.save_answer(sent_info)
        if ::Poll::HasAnswered.find_by(:user_id => sent_info[:answer][:user_id],
            :poll_polls_id => sent_info[:answer][:poll_id])
            return false
        else
            if sent_info[:disc_answer]
                # Save the discursive answer
                ::Poll::Discursive::DiscursiveAnswer.create!(
                    :poll_polls_id => sent_info[:answer][:poll_id],
                    :discursive_answer => sent_info[:answer][:discursive_answer]
                )
            else
                # Save the objective answer
                ::Poll::Objective::ObjectiveAnswer.create!(
                    :poll_polls_id => sent_info[:answer][:poll_id],
                    :poll_objective_objective_options_id => sent_info[:answer][:poll_opts]
                )
            end
            ::Poll::HasAnswered.create!(
                :poll_polls_id => sent_info[:answer][:poll_id],
                :user_id => sent_info[:answer][:user_id]
            )
        end
    end
end

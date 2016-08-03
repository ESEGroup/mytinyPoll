class CreatePollAnswers < ActiveRecord::Migration
  def change
    create_table :poll_answers do |t|
      t.belongs_to :poll_polls
      t.belongs_to :poll_objective_objective_options
      t.string :discursive_answer
      t.string :type
    end
  end
end

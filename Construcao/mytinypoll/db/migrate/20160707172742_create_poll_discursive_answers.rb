class CreatePollDiscursiveAnswers < ActiveRecord::Migration
  def change
    create_table :poll_discursive_answers do |t|
      t.references :user
      t.references :poll_discursive_poll
      t.string :anwser
    end
  end
end

class CreatePollAnswers < ActiveRecord::Migration
  def change
    create_table :poll_answers do |t|
      t.references :user
      t.references :poll_polls
      t.string :discursive_answer
      t.string :type
      t.timestamps null: false
    end
  end
end

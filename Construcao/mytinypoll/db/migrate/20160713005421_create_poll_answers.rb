class CreatePollAnswers < ActiveRecord::Migration
  def change
    create_table :poll_answers do |t|

      t.timestamps null: false
    end
  end
end

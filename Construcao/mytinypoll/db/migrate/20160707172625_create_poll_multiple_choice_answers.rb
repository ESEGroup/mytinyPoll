class CreatePollMultipleChoiceAnswers < ActiveRecord::Migration
  def change
    create_table :poll_multiple_choice_answers do |t|
      t.references :user
      t.references :poll_multiple_choice_poll
      t.references :poll_multiple_choice_choices
    end
  end
end

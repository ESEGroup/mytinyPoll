class CreatePollMultipleChoiceChoices < ActiveRecord::Migration
  def change
    create_table :poll_multiple_choice_choices do |t|
      t.references :poll_multiple_choice_poll 
      t.string :choice
    end
  end
end

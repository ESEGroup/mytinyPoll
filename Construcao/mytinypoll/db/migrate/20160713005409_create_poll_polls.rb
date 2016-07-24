class CreatePollPolls < ActiveRecord::Migration
  def change
    create_table :poll_polls do |t|
      t.string :title
      t.string :privacy
      t.string :question
      t.datetime :deadline
      t.string :type
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end

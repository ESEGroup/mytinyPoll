class CreatePollHasAnswereds < ActiveRecord::Migration
  def change
    create_table :poll_has_answereds do |t|
      t.belongs_to :user
      t.belongs_to :poll_polls
    end
  end
end

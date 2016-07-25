class CreatePollInvitePeople < ActiveRecord::Migration
  def change
    create_table :poll_invite_people do |t|
      t.references :poll_polls
      t.string :email
      t.timestamps null: false
    end
  end
end

class AddPollAvatarColumnsToPollPolls < ActiveRecord::Migration
  def up
    add_attachment :poll_polls, :poll_avatar
  end

  def down
    remove_attachment :users, :poll_avatar
  end
end

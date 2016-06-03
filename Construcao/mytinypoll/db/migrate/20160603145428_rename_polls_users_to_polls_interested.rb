class RenamePollsUsersToPollsInterested < ActiveRecord::Migration
  def change
    rename_table :polls_users, :polls_interested
  end
end

class RenamePollsUsersToPollsRespondents < ActiveRecord::Migration
  def change
    rename_table  :polls_users, :polls_respondents
  end
end

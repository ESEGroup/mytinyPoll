class RenameCreatorsPollsToPollsCreators < ActiveRecord::Migration
  def change
    rename_table :creators_polls, :polls_creators
  end
end

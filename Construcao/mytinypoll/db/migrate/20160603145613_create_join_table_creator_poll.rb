class CreateJoinTableCreatorPoll < ActiveRecord::Migration
  def change
    create_join_table :creators, :polls do |t|
      # t.index [:creator_id, :poll_id]
      # t.index [:poll_id, :creator_id]
    end
  end
end

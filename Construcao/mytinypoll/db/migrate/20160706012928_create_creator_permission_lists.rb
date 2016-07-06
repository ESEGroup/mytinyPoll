class CreateCreatorPermissionLists < ActiveRecord::Migration
  def change
    create_table :creator_permission_lists do |t|
      t.references :user
    end
    
    add_index :creator_permission_lists, :user_id, :unique => true
  end
end

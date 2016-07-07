class CreatePollDiscursivePolls < ActiveRecord::Migration
  def change
    create_table :poll_discursive_polls do |t|
      t.references :user
      t.datetime :created_at
      t.datetime :expires_at
      t.string :image_resource
      t.string :title
      t.string :privacy
      t.string :question
    end
  end
end

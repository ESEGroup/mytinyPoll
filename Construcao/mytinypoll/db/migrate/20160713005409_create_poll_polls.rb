class CreatePollPolls < ActiveRecord::Migration
  def change
    create_table :poll_polls do |t|
      t.string :title
      t.string :privacy
      t.string :type
      t.timestamps null: false
    end
  end
end

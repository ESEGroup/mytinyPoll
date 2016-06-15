class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.boolean :visible
      t.string :question
      t.string :path_image

      t.timestamps null: false
    end
  end
end

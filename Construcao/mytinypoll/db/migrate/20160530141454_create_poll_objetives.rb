class CreatePollObjetives < ActiveRecord::Migration
  def change
    create_table :poll_objetives do |t|

      t.timestamps null: false
    end
  end
end

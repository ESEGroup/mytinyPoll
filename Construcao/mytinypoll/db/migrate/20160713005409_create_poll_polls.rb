class CreatePollPolls < ActiveRecord::Migration
  def change
    create_table :poll_polls do |t|
      t.string :title
      t.string :privacy
      t.string :imagepath
      t.string :question
      t.datetime :expiration_date
      t.string :type
      t.references :poll_objective_objective_options
      t.timestamps null: false
    end
  end
end

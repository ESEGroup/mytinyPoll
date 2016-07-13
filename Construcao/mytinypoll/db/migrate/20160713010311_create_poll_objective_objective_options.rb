class CreatePollObjectiveObjectiveOptions < ActiveRecord::Migration
  def change
    create_table :poll_objective_objective_options do |t|

      t.timestamps null: false
    end
  end
end

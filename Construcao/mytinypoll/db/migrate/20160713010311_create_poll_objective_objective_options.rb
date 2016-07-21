class CreatePollObjectiveObjectiveOptions < ActiveRecord::Migration
  def change
    create_table :poll_objective_objective_options do |t|
      t.belongs_to :poll_polls
      t.string :alternative
    end
  end
end

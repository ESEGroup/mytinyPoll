class CreateObjectivePolls < ActiveRecord::Migration
  def change
    create_table :objective_polls do |t|
    end
    
    #remove_column :objective_polls, :teste
    add_reference :options, :objective_polls, index: true
  
  end

end

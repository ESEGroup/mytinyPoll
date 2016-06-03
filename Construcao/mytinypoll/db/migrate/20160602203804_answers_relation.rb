class AnswersRelation < ActiveRecord::Migration
  def change
    create_table :objective_answers do |t|

      t.timestamps null: false
    end
    
    create_table :discursive_answers do |t|
       t.string :answer
      t.timestamps null: false
    end
    
    
    add_reference :answers, :polls, index: true
    add_reference :objective_answers, :options,  index: true
  end
end

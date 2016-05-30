class CreateAnswerObjetives < ActiveRecord::Migration
  def change
    create_table :answer_objetives do |t|

      t.timestamps null: false
    end
  end
end

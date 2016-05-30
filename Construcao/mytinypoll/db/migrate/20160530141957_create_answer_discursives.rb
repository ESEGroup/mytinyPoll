class CreateAnswerDiscursives < ActiveRecord::Migration
  def change
    create_table :answer_discursives do |t|

      t.timestamps null: false
    end
  end
end

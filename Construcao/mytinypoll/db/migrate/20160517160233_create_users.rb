class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, limit:35
      t.string :email, limit:35
      t.string :cpf, limit:11
      t.string :password, limit:150
      t.string :idfacebook, limit:35

      t.timestamps null: false
    end
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :cpf
      t.string :password
      t.string :idfacebook

      t.timestamps null: false
    end
  end
end
